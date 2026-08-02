using Microsoft.VisualBasic;
using System.Globalization;

namespace DotnetPostprocessing.Post;

enum OperationType
{
    Unknown,
    Mill,
    Lathe,
    Auxiliary,
    WireEDM
}

public partial class NCFile : TTextNCFile
{
    ///<summary>Main nc-programm number</summary>
    public string ProgName { get; set; }
    public string PartName { get; set; }
    public string Programmer { get; set; }
    public double ProgTime { get; set; }

    public override void OnInit()
    {
        //     this.TextEncoding = Encoding.GetEncoding("windows-1251");
    }

    public void WriteLineWithBlockN(string text)
    {
        if (!BlockN.Disabled)
        {
            WriteLine(BlockN.ToString() + " " + text);
            BlockN.v += BlockN.AutoIncrementStep;
        }
        else
            WriteLine(text);
    }

    public void EmptyLineOut()
    {
        if (!BlockN.Disabled)
        {
            WriteLine(BlockN.ToString() + "");
            BlockN.v += BlockN.AutoIncrementStep;
        }
        else
            WriteLine("");
    }
}

public partial class Postprocessor : TPostprocessor
{
    ///<summary>Current nc-file</summary>
    NCFile nc;

    #region Common variables definition
    OperationType currentOperationType = OperationType.Unknown;
    int interpolationType = 0;                      // 0-unknown, 1-polar, 2-cylindrical, 3-multiaxis
    double startSubBlockN = 0.0;
    double endSubBlockN = 0.0;
    double toolOpNumber = 0.0;
    double xScale = 2.0;                            // X axis scale coefficient (1 - radial, 2 - diametral)
    bool startCommentOut = false;
    bool cycleDrillOn = false;
    bool cycleTurnOn = false;
    bool rotationC = false;
    bool takeoverIsActive = false;
    bool toolIsProbe = false;
    string operationRevolverID;
    string operationAuxiliaryGUID = "{2925E770-FBCC-4FC7-AE17-10955A4DE1BD}";
    string operationTakeoverGUID = "{A84A7413-64CA-4C8D-8137-1334B5FC6D00}";
    SortedList<int, double> ToolTime = new SortedList<int, double>();
    #endregion

    #region Selection variables
    int _fanucGcodeSystem = 1;                      // 1-A, 2-B, 3-C
    int _progNameFormat = 1;                        // 1-"O1234"
    int _toolCallFormat = 2;                        // 1-"T01 M6", 2-"T0101"
    int _turnmillMachSchemeType = 1;                // 1-"XZC", 2-"XYZC", 3-"XYZCB"
    bool _blockNumberCounter = false;
    bool _pprogInNewFile = false;
    bool _machineMultichannel = false;
    string _fileNameExtansion = "nc";
    string _headSpindRevID = "Tool110";
    string _turretSpindRevID = "AxisT";
    string _subSpindRevID = "RightWorkpieceHolder";
    string _subSpindLinAxisID = "AxisZ3Pos";
    #endregion

    #region User classes and methods
    void ToolWorkTime()
    {
        for (int i = 0; i < CLDProject.Operations.Count; i++)
        {
            var op = CLDProject.Operations[i];
            double time = op.PPFunCommand.CLD[45];
            if (!ToolTime.ContainsKey(op.Tool.Number))
                ToolTime.TryAdd(op.Tool.Number, time);
            else
            {
                int index = ToolTime.IndexOfKey(op.Tool.Number);
                ToolTime.SetValueAtIndex(index, ToolTime.GetValueAtIndex(index) + time);
            }
        }
        for (int j = 0; j < ToolTime.Count; j++)
            nc.ProgTime += ToolTime.GetValueAtIndex(j);
    }

    void PrintAllTools() 
    { 
        List<string> list = new List<string>();
        for (int i = 0; i < CLDProject.Operations.Count; i++) 
        {
            var op = CLDProject.Operations[i];
            if (op.PPFunCommand.Str["PPFun(TechInfo).Operation(0).GUID"] != operationAuxiliaryGUID)
            {
                string toolParams = Transliterate($"T{op.Tool.Number} - {op.Tool.Caption}");
                if ((op.Tool != null) && (!list.Contains(toolParams)))
                    list.Add(toolParams);
            }
        }
        // nc.WriteLine("(TOOL LIST:)");
        foreach (var tl in list)
            nc.WriteLine($"({tl})");
    }

    void ProgNameOut()
    {
        if (_progNameFormat == 1)
        {
            bool interrupt = false;
            string nameWithoutO = nc.ProgName;
            if (nc.ProgName.StartsWith("O"))
                nameWithoutO = nc.ProgName.Replace("O","");
            if (TryStrToInt(nameWithoutO, out int numericProgName))
            {
                if (numericProgName <= 9999)
                    nc.ProgNameForm.Hide(numericProgName);
                else
                    InputBox("Внимание! Название УП имеет значение больше 9999. Прервать трансляцию?\t", ref interrupt);
            }              
            else                                                         
                InputBox("Внимание! В названии УП присутствуют буквы. Прервать трансляцию?\t", ref interrupt);
            if (interrupt == true)
                BreakTranslation();
            else if (numericProgName == 0)
                nc.WriteLine(nc.ProgName);
            else
                nc.WriteLine("O" + Str(nc.ProgNameForm));
        }
    }

    void CheckMinMaxAxisRotValue(ICLDMotionCommand cmd)
    {
        if (cmd.CmdType == CLDCmdType.Goto)
        {
            if ((cmd.Next.Name == "MultiGOTO") && (rotationC == true))
            {
                rotationC = false;
                nc.WriteLineWithBlockN(";(--------------)");
            }
        }
        else if (cmd.CmdType == CLDCmdType.MultiGoto)
        {
            if  ((cmd.Next.Name == "Goto") && (rotationC == false))
                for (int i = cmd.Index; i < cmd.Index+5; i++)
                {
                    if (CLDProject.Operations[cmd.CLDFile.Index-1].CLDFile.Cmd[i].Next?.CmdType == 
                    CLDCmdType.Interpolation)
                    {
                        rotationC = true;
                        nc.WriteLineWithBlockN(";(Axis rotation)");
                        break;
                    }
                }
        }
    }

    void OperationWorkPlane(ICLDTechOperation op, out int workPlane)
    {
        workPlane = 18;
        for (int i = 0; i < op.CLDFile.CmdCount; i++)
        {
            if (op.CLDFile.Cmd[i].Name == "Structure")
                if (op.CLDFile.Cmd[i].CLD["OnOff"] == 72)
                    break;
            if (op.CLDFile.Cmd[i].Name == "Plane")
            {
                if ((op.CLDFile.Cmd[i].CLD["Plane"] == 33) || (op.CLDFile.Cmd[i].CLD["Plane"] == 133))
                    workPlane = 17;
                else if ((op.CLDFile.Cmd[i].CLD["Plane"] == 37) || (op.CLDFile.Cmd[i].CLD["Plane"] == 137))
                    workPlane = 19;
                else if ((op.CLDFile.Cmd[i].CLD["Plane"] == 41) || (op.CLDFile.Cmd[i].CLD["Plane"] == 141))
                    workPlane = 18;
            }
        }
    }

    void ChangeRegisterAddress()
    {
        if (operationRevolverID == _headSpindRevID)
        {
            nc.X.Address = "X";
            nc.Y.Address = "Y";
            nc.Z.Address = "Z"; 
            nc.I.Address = "I";
            nc.J.Address = "J";
            nc.K.Address = "K"; 
        }
        else if (operationRevolverID == _turretSpindRevID)
        {
            nc.X.Address = "X2=";
            nc.Y.Address = "Y2=";
            nc.Z.Address = "Z2="; 
            nc.I.Address = "I2=";
            nc.J.Address = "J2=";
            nc.K.Address = "K2="; 
        }
        if (operationRevolverID == _subSpindRevID)
            nc.C.Address = "C2="; 
        else
            nc.C.Address = "C";
    }

    void ResetRegisterValue()
    {
        nc.GRotType.Reset();
        nc.GInterp.Reset();
        nc.GFeed.Reset();
        nc.GCorL.Reset();
        nc.X.Reset();
        nc.Y.Reset();
        nc.Z.Reset();
        nc.A.Reset();
        nc.B.Reset();
        nc.C.Reset();
        nc.S.Reset();
        nc.F.Reset();
        nc.QThreadAngle.Reset();
        nc.MCoolant.Reset();
        nc.MCoolant2.Reset();
    }

    void ResetCycleRegisterValue()
    {
        nc.GCycle.Reset();
        nc.GRcyc.Reset();
        nc.X.Reset();
        nc.Y.Reset();
        nc.Z.Reset();
        nc.Zcyc.Reset();
        nc.Rcyc.Reset();
        nc.Qcyc.Reset();
        nc.Pcyc.Reset();
        nc.Jcyc.Reset();
        nc.Ucyc.Reset();
        nc.Wcyc.Reset();
        nc.F.Reset();
        nc.D.Reset();
    }
    #endregion 

    public override void OnStartProject(ICLDProject prj)
    {
        CultureInfo.DefaultThreadCurrentCulture = new CultureInfo("ru-RU");
        CultureInfo.DefaultThreadCurrentUICulture = new CultureInfo("ru-RU");
        nc = new NCFile();
        nc.OutputFileName = Path.ChangeExtension(Settings.Params.Str["OutFiles.NCFileName"],$"{_fileNameExtansion}");
        nc.ProgName = Settings.Params.Str["OutFiles.NCProgName"];
        if (String.IsNullOrEmpty(nc.ProgName))
            nc.ProgName = Path.GetFileNameWithoutExtension(nc.OutputFileName);
        nc.PartName = Settings.Params.Str["OutFiles.PartName"];
        nc.Programmer = Settings.Params.Str["OutFiles.Programmer"];
        if (_blockNumberCounter == false)
            nc.BlockN.Disable();
        ToolWorkTime();
        nc.WriteLine("%");
        ProgNameOut();
        nc.WriteLine($"(Date: {CurDate()} {CurTime()})");
        if (!String.IsNullOrEmpty(nc.PartName))
            nc.WriteLine($"(Part: {Transliterate(nc.PartName)})");
        if (!String.IsNullOrEmpty(nc.Programmer))
            nc.WriteLine($"(Programmer: {Transliterate(nc.Programmer)})");
        nc.WriteLine();
        PrintAllTools();
        nc.WriteLine();
        nc.WriteLineWithBlockN("G40 G80 G90");
        ResetRegisterValue();
        nc.GCoordMode.Hide(90);
    }

    public override void OnFinishProject(ICLDProject prj)
    {
        nc.Block.Out();
        nc.WriteLineWithBlockN("M30");
        nc.WriteLineWithBlockN($"(Program time: {Round(nc.ProgTime,2)} min)");
        nc.WriteLine("%");
        CLDSub.Translate();
    }

    public override void OnStartTechOperation(ICLDTechOperation op, ICLDPPFunCommand cmd, CLDArray cld)
    {
        currentOperationType = (OperationType)(int)cld[60];
        operationRevolverID = cmd.Str["PPFun(TechInfo).Tool.RevolverID"];
        ChangeRegisterAddress();
        OperationWorkPlane(op, out int workPlane);
        if (currentOperationType == OperationType.Lathe)
            xScale = 2.0;
        else
            xScale = 2.0;                           // X coord scale coef for Mill and other operations
        if (currentOperationType < OperationType.Auxiliary)
        {
            nc.WriteLineWithBlockN($"(Operation: {Transliterate(op.Comment)})");
            nc.WriteLineWithBlockN($"(Tool: {Transliterate(op.Tool.Caption)})");
            if ((toolOpNumber == 0) || (toolOpNumber != op.Tool.Number))
            {
                nc.WriteLineWithBlockN($"G{cld[65]} G{workPlane}");
                if (_toolCallFormat == 1)
                    nc.WriteLineWithBlockN($"{nc.T.ToString(op.Tool.Number)} M06");
                else if (_toolCallFormat == 2)
                {
                    string toolLengthCor;
                    if (cld[31] < 10)
                        toolLengthCor = $"0{cld[31]}";
                    else
                        toolLengthCor = Str(cld[31]);
                    nc.WriteLineWithBlockN($"{nc.T.ToString(op.Tool.Number)}{toolLengthCor}");
                }
                toolOpNumber = op.Tool.Number;
            }
            if (cld[25] == 25)
                toolIsProbe = true;

            nc.GPlane.Hide(workPlane);
            nc.GPlane.v0 = workPlane;
            nc.GWCS.Hide(cld[65]);
            startCommentOut = true;
        }
        else if (cmd.Str["PPFun(TechInfo).Operation(0).GUID"] == operationTakeoverGUID)
        {
            nc.WriteLineWithBlockN($"(Operation: {Transliterate(op.Comment)})");
            nc.WriteLineWithBlockN($"({Transliterate(op.Tool.Caption)})");
            takeoverIsActive = true;
            startCommentOut = true;
        }
    }

    public override void OnFinishTechOperation(ICLDTechOperation op, ICLDPPFunCommand cmd, CLDArray cld)
    {
        if (currentOperationType < OperationType.Auxiliary)
        {
            if (op.NextOp?.Tool.Number != toolOpNumber)
            {
                nc.Block.Out();
                if (currentOperationType != OperationType.Lathe)
                {
                    if (nc.A.v != 0)
                        nc.A.v = 0;  
                    if (nc.B.v != 0)
                        nc.B.v = 0;  
                    if (nc.C.v != 0)
                        nc.C.v = 0; 
                    nc.Block.Out();
                }
                if (toolIsProbe == false)
                {
                    nc.MSpindle.Show(5);
                    nc.Block.Out();
                }
                if ((nc.MCoolant != double.MaxValue) || (nc.MCoolant2 != double.MaxValue))
                {
                    nc.MCoolant.Show(9);
                    nc.Block.Out();
                }
                if ((op.CLDFile.Index - CLDProject.CLDSub.SubCount) < CLDProject.Operations.Count)
                    nc.WriteLineWithBlockN(nc.MPause.ToString(1));
            }
            toolIsProbe = false;
            ResetRegisterValue();
            nc.WriteLine();
        }
        else if (cmd.Str["PPFun(TechInfo).Operation(0).GUID"] == operationTakeoverGUID)
        {
            takeoverIsActive = false;
            ResetRegisterValue();
            nc.WriteLine();
        }
        else
            nc.WriteLine();
    }

    public override void OnStartNCSub(ICLDSub cldSub, ICLDPPFunCommand cmd, CLDArray cld)
    {
        if ((cycleDrillOn == false) && (cycleTurnOn == false))
        {
            nc.Block.Out();
            if (_pprogInNewFile == true)
            {
                nc = new NCFile();
                nc.OutputFileName = Path.GetDirectoryName(nc.OutputFileName) + @"\" + Path.ChangeExtension(cldSub.Name, $"{_fileNameExtansion}");
            }
            else
                nc.WriteLine();
            cldSub.Tag = 1000 + cldSub.SubCode;
            nc.BlockN.Disable();
            nc.WriteLine($"O{cldSub.Tag}");
            ResetRegisterValue();
        }
        else
        {
            if (cycleTurnOn == true)
            {
                if (NCFiles.OutputDisabled == true)
                {
                    if (nc.BlockN.Disabled == true)
                        startSubBlockN = endSubBlockN + 1;
                    else
                        startSubBlockN = nc.BlockN.v + nc.BlockN.AutoIncrementStep*2;
                }
                else
                    nc.GInterp.v = 0;
            }
        }
    }

    public override void OnCallNCSub(ICLDSub cldSub, ICLDPPFunCommand cmd, CLDArray cld)
    {
        nc.Block.Out();
        cldSub.Tag = 1000 + cldSub.SubCode;
        nc.WriteLineWithBlockN($"M98 P{cldSub.Tag}");
    }

    public override void OnFinishNCSub(ICLDSub cldSub, ICLDPPFunCommand cmd, CLDArray cld)
    {
        if ((cycleDrillOn == false) && (cycleTurnOn == false))
        {
            nc.Block.Out();
            nc.WriteLine("M99");
        }
        else 
        {
            if ((cycleTurnOn == true) && (NCFiles.OutputDisabled == true))
            {
                if (nc.BlockN.Disabled == true)
                    endSubBlockN = nc.TurnCycBlockN;
                else
                    endSubBlockN = nc.BlockN.v + nc.BlockN.AutoIncrementStep;
            }
        }
    }

    public override void OnLoadTool(ICLDLoadToolCommand cmd, CLDArray cld)
    {
        nc.T.Hide(cmd.Number);
        nc.H.Hide(Abs(cld["M"]));
        nc.D.Hide(Abs(cld["K"]));
    }

    public override void OnSpindle(ICLDSpindleCommand cmd, CLDArray cld)
    {
        if ((cmd.IsOn == true) && (toolIsProbe == false) && (takeoverIsActive == false))
        {      
            nc.MSpindle.Show((cmd.IsClockwiseDir == true)? 3 : 4);
            if (cmd.IsRPM)
            {
                nc.GRotType.v = 96;
                nc.S.v = Abs(cmd.RPMValue);
            }
            else if (cmd.IsCSS)
            {
                nc.GRotType.v = 97;
                nc.S.v = Abs(cmd.CSSValue);
                if (currentOperationType == OperationType.Lathe)
                {
                    nc.Block.Out();
                    nc.GRotLimit.Show((_fanucGcodeSystem == 1)? 50 : 92);
                    nc.SLimit.Show(Abs(cmd.RPMValue));
                }
            }
            nc.Block.Out();
        }
    }

    public override void OnCoolant(ICLDCoolantCommand cmd, CLDArray cld)
    {
        if (cmd.IsOn)
        {
            if (cld["N"] == 1)
                nc.MCoolant.v = 8;
            if (cld["N"] == 3)
                nc.MCoolant2.v = 88;
        }
    }

    public override void OnWorkpieceCS(ICLDOriginCommand cmd, CLDArray cld)
    {}

    public override void OnMoveVelocity(ICLDMoveVelocityCommand cmd, CLDArray cld)
    {
        if (cmd.IsRapid)
            nc.GInterp.v = 0; 
        else
        {
            if (nc.GInterp == 0)
                nc.GInterp.v = 1;
            nc.F.v = cmd.FeedValue;
            if (cld["MMPM"] == 315)
                nc.GFeed.v = (_fanucGcodeSystem == 1)? 98 : 94;
            else
                nc.GFeed.v = (_fanucGcodeSystem == 1)? 99 : 95;
        }
    }

    public override void OnPlane(ICLDPlaneCommand cmd, CLDArray cld)  
    {}

    public override void OnGoto(ICLDGotoCommand cmd, CLDArray cld)
    {
        if ((nc.GInterp.v == 32) || (nc.GInterp.v == 33))
            nc.Block.Show(nc.F, nc.GInterp);
        else if (nc.GInterp > 1)
            nc.GInterp.v = 1;
        switch (interpolationType)
        {
            case (int)CLDInterpMode.Polar:
                nc.X.v = cmd.EP.X;
                nc.C.v = cmd.EP.Y;
                if (cycleDrillOn == false)
                    nc.Z.v = cmd.EP.Z;
                break;
            case (int)CLDInterpMode.Cylindrical:
                nc.C.v = Math.Atan2(cmd.EP.Y, cmd.EP.X) * (180 / Math.PI);
                if (cycleDrillOn == false)
                    nc.Z.v = cmd.EP.Z;
                break;
            case (int)CLDInterpMode.MultiAxis:
            default:
                nc.X.v = cmd.EP.X * xScale;
                if ((_turnmillMachSchemeType > 1) && (currentOperationType != OperationType.Lathe))
                    nc.Y.v = cmd.EP.Y;
                if (cycleDrillOn == false)
                    nc.Z.v = cmd.EP.Z;
                break;
        }
        if ((cycleTurnOn == true) && (nc.BlockN.Disabled == true) && (NCFiles.OutputDisabled == false) && (cmd.Next?.CmdType == CLDCmdType.PPFun))
            nc.TurnCycBlockN.v = endSubBlockN;
        if (nc.X.Changed || nc.Y.Changed || nc.Z.Changed || nc.A.Changed || nc.B.Changed || nc.C.Changed)
            nc.Block.Out();

        if (interpolationType == 3)
            CheckMinMaxAxisRotValue(cmd);
    }

    public override void OnMultiGoto(ICLDMultiGotoCommand cmd, CLDArray cld)
    {
        if (nc.GInterp > 1)
            nc.GInterp.v = 1;
        else if (nc.GInterp == 0)
            nc.GInterp.v = 0;
        if (takeoverIsActive == false)
        {
            foreach (CLDMultiMotionAxis ax in cmd.Axes)
            {
                if (interpolationType != (int)CLDInterpMode.MultiAxis)
                    if (nc.X.Changed && nc.Y.Changed && nc.GInterp == 0)
                        nc.Block.Out();
                if ((ax.ID == "AxisXPos") || (ax.ID == "AxisX2Pos"))
                    nc.X.v = ax.Value * xScale;
                else if (((ax.ID == "AxisYPos") || (ax.ID == "AxisY2Pos")) && (_turnmillMachSchemeType > 1))
                    nc.Y.v = ax.Value;
                else if ((ax.ID == "AxisZPos") || (ax.ID == "AxisZ2Pos"))
                    nc.Z.v = ax.Value;
                else if ((ax.ID == "AxisAPos") || (ax.ID == "AxisA2Pos"))
                    nc.A.v = ax.Value;
                else if ((ax.ID == "AxisBPos") || (ax.ID == "AxisB2Pos"))
                    nc.B.v = ax.Value;
                else if ((ax.ID == "AxisCPos") || (ax.ID == "AxisC2Pos"))
                    nc.C.v = ax.Value;
            }
            if (nc.X.Changed || nc.Y.Changed || nc.Z.Changed || nc.A.Changed || nc.B.Changed || nc.C.Changed)
            {
                if (interpolationType == (int)CLDInterpMode.MultiAxis)
                {
                    if (nc.A.v != 0)
                        nc.A.Show();  
                    if (nc.B.v != 0)
                        nc.B.Show();  
                    if (nc.C.v != 0)
                        nc.C.Show(); 
                }
                nc.Block.Out();
            }
            if (interpolationType == (int)CLDInterpMode.MultiAxis)
                CheckMinMaxAxisRotValue(cmd);
        }
        else
        {
            foreach (CLDMultiMotionAxis ax in cmd.Axes)
            {
                if (ax.ID == _subSpindLinAxisID)
                    nc.A.Show(ax.Value);
            }
            nc.Block.Out();
        }
    }

    public override void OnPhysicGoto(ICLDPhysicGotoCommand cmd, CLDArray cld)
    {
        foreach(CLDMultiMotionAxis ax in cmd.Axes) 
        {
            if ((ax.ID == "AxisXPos") || (ax.ID == "AxisX2Pos"))
                nc.X.Show(ax.Value);
            else if (((ax.ID == "AxisYPos") || (ax.ID == "AxisY2Pos")) && (_turnmillMachSchemeType > 1))
                nc.Y.Show(ax.Value);
            else if ((ax.ID == "AxisZPos") || (ax.ID == "AxisZ2Pos"))
                nc.Z.Show(ax.Value);
            else if ((ax.ID == "AxisAPos") || (ax.ID == "AxisA2Pos"))
                nc.A.Show(ax.Value);
            else if ((ax.ID == "AxisBPos") || (ax.ID == "AxisB2Pos"))
                nc.B.Show(ax.Value);
            else if ((ax.ID == "AxisCPos") || (ax.ID == "AxisC2Pos"))
                nc.C.Show(ax.Value);
        }
        if (nc.X.Changed || nc.Y.Changed || nc.Z.Changed || nc.A.Changed || nc.B.Changed || nc.C.Changed) 
            nc.Block.Out();
    }

    public override void OnGoHome(ICLDGoHomeCommand cmd, CLDArray cld)
    {
        nc.GInterp.Hide();
        foreach(CLDMultiMotionAxis ax in cmd.Axes)
        {
            if (ax.IsX)
                nc.WriteLineWithBlockN("G28 G0 U0 W0");
            if (ax.ID == _subSpindLinAxisID)
                nc.WriteLineWithBlockN("G28 G0 A0");
        }    
    }

    public override void OnInterpolation(ICLDInterpolationCommand cmd, CLDArray cld)
    {
        if (cmd.InterpType == 9021)             // Polar interpolation
        {
            if (_turnmillMachSchemeType > 1)
                nc.Y.v = 0;
            if (cmd.IsOn)
            {
                interpolationType = (int)cmd.InterpMode;
                nc.Block.Out();
                nc.WriteLineWithBlockN("G12.1");
            }
            else
            {
                interpolationType = 0;
                nc.Block.Out();
                nc.WriteLineWithBlockN("G13.1");
            }
        }
        else if (cmd.InterpType == 9022)        // Cylindrical interpolation
        {
            if (_turnmillMachSchemeType > 1)
                nc.Y.v = 0;
            if (cmd.IsOn)
            {
                interpolationType = (int)cmd.InterpMode;
                nc.Block.Out();
                nc.WriteLineWithBlockN($"G07.1 IP{cld["P1"]}");
            }
            else
            {
                interpolationType = 0;
                nc.Block.Out();
                nc.WriteLineWithBlockN("G07.1 IP0");
            }
        }
        else if (cmd.InterpType == 9023)        // MULTIAXIS interpolation
        {
            if (cmd.IsOn)
            {
                interpolationType = (int)cmd.InterpMode;
                nc.Block.Out();
                nc.WriteLineWithBlockN($"G43.3");
            }
            else
            {
                interpolationType = 0;
                nc.Block.Out();
                nc.WriteLineWithBlockN($"G49");
            }
        }
    }

    public override void OnCircle(ICLDCircleCommand cmd, CLDArray cld)
    {
        nc.GInterp.v = cmd.Dir;
        nc.GPlane.v = cmd.Plane;
        switch (interpolationType)
        {
            case (int)CLDInterpMode.Polar:
                nc.X.Show(cmd.EP.X);
                nc.C.Show(cmd.EP.Y);
                if (cycleDrillOn == false)
                    nc.Z.v = cmd.EP.Z;
                break;
            case (int)CLDInterpMode.Cylindrical:
                nc.C.Show(Math.Atan2(cmd.EP.Y, cmd.EP.X) * (180 / Math.PI));
                if (cycleDrillOn == false)
                    nc.Z.v = cmd.EP.Z;
                break;
            case (int)CLDInterpMode.MultiAxis:
            default:
                nc.X.Show(cmd.EP.X * xScale);
                if ((_turnmillMachSchemeType > 1) && (currentOperationType != OperationType.Lathe))
                    nc.Y.Show(cmd.EP.Y);
                if (cycleDrillOn == false)
                    nc.Z.Show(cmd.EP.Z);
                break;
        }

        switch (Abs(cmd.Plane))
        {
            case 17:
                if ((Settings.Params.Int["CircleTypeOut"] == 1) && (cld["Ang"] <= 180))
                    nc.R.Show(cmd.RIso);
                else
                {
                    nc.I.Show(cld[11]);
                    nc.J.Show(cld[12]);
                }
                break;
            case 18:
                if ((Settings.Params.Int["CircleTypeOut"] == 1) && (cld["Ang"] <= 180))
                    nc.R.Show(cmd.RIso);
                else
                {
                    nc.I.Show(cld[12]);
                    nc.K.Show(cld[13]); 
                }
                break;
            case 19:
                if ((Settings.Params.Int["CircleTypeOut"] == 1) && (cld["Ang"] <= 180))
                    nc.R.Show(cmd.RIso);
                else
                {
                    nc.J.Show(cld[11]);
                    nc.K.Show(cld[13]);
                }
                break;
        }
        if ((cycleTurnOn == true) && (nc.BlockN.Disabled == true) && (NCFiles.OutputDisabled == false) && (cmd.Next?.CmdType == CLDCmdType.PPFun))
            nc.TurnCycBlockN.v = endSubBlockN;
        nc.Block.Out();
    }

    public override void OnLengthCompensation(ICLDCutComCommand cmd, CLDArray cld)
    {
        if ((nc.H.v != nc.H.v0) && (_toolCallFormat == 1))
        {
            nc.GCorL.Show(43);
            nc.H.Show();
            nc.Block.Out();
        }
    }

    public override void OnRadiusCompensation(ICLDCutComCommand cmd, CLDArray cld)
    {
        if (cmd.IsOn) 
        {
            if (cmd.IsRightDirection)
                nc.GCorD.v = 42;
            else
                nc.GCorD.v = 41;
            nc.D.v = cmd.CorrectorNumber;
        } 
        else 
            nc.GCorD.v = 40;
    }

    public override void OnHoleExtCycle(ICLDExtCycleCommand cmd, CLDArray cld)
    {
        cycleDrillOn = true;
        if (cmd.IsOn)
        {
            bool interrupt = false;
            if (cld[9] == 1)
                nc.GFeed.v = (_fanucGcodeSystem == 1)? 98 : 94;
            else
                nc.GFeed.v = (_fanucGcodeSystem == 1)? 99 : 95;
            nc.Block.Out();
            if (interpolationType == (int)CLDInterpMode.Polar)
                InputBox("Внимание! Циклы сверления недоступны в полярном режиме (G12.1). Прервать трансляцию CLData?\t\t\t\t\t", ref interrupt);
            if (interpolationType == (int)CLDInterpMode.Cylindrical)
                InputBox("Внимание! Циклы сверления недоступны в режиме цилиндрической интерполяции (G07.1). Прервать трансляцию CLData?\t\t\t\t\t", ref interrupt);
            if (interrupt == true)
                BreakTranslation();
            nc.GInterp.Hide();
            ResetCycleRegisterValue();
        }
        else if (cmd.IsCall)
        {
            if (nc.X.v != nc.X.v0)
                nc.X.Show();
            if ((nc.Y.v != nc.Y.v0) && (_turnmillMachSchemeType > 1) && (currentOperationType != OperationType.Lathe))
                nc.Y.Show();
            if (cmd.CycleType != 484) 
                nc.F.v = cld[10];
            else
                nc.F.v = cld[17]*100;
            if (nc.GCoordMode.v == 91)
            {
                nc.Zcyc.v = -cld[8];
                nc.Rcyc.v = -cld[6];
            }
            else
            {
                nc.Zcyc.v = nc.Z.v - cld[8];
                nc.Rcyc.v = nc.Z.v - cld[6];
            }
            switch (cmd.CycleType)
            {
                case (int)CLDCycle.Drill:
                    nc.GCycle.v = 81;
                    break;
                case (int)CLDCycle.Face:
                    nc.GCycle.v = 82;
                    if (cld[15] != 0)
                        nc.Pcyc.v = cld[15];
                    break;
                case (int)CLDCycle.ChipRemoving or (int)CLDCycle.ChipBreaking:
                    nc.GCycle.v = 83;
                    nc.Qcyc.v = cld[17];
                    if (cld[15] != 0)
                        nc.Pcyc.v = cld[15];
                    if (cld[18] != 0)
                        nc.Jcyc.v = cld[18];
                    break;
                case (int)CLDCycle.Tap:
                    nc.GCycle.v = 84;
                    break;
                case (int)CLDCycle.Bore5:
                    nc.GCycle.v = 85;
                    break;
                case (int)CLDCycle.Bore6:
                    nc.GCycle.v = 86;
                    break;
                case (int)CLDCycle.Bore7:
                    nc.GCycle.v = 87;
                    break;
                case (int)CLDCycle.Bore8:
                    nc.GCycle.v = 88;
                    nc.Pcyc.v = cld[15];
                    break;
                case (int)CLDCycle.Bore9:
                    nc.GCycle.v = 89;
                    nc.Pcyc.v = cld[15];
                    break;
            }
            nc.Block.Out();
        }
        else if (cmd.IsOff)
        {
            cycleDrillOn = false;
            nc.GCycle.v = 80;
            nc.Block.Out();
            ResetCycleRegisterValue();
        }
    }

    public override void OnTurnExtCycle(ICLDExtCycleCommand cmd, CLDArray cld)
    {
        cycleTurnOn = true;
        if (cmd.IsOn)
        {
            nc.GInterp.Hide();
            nc.Block.Out();
            if ((cmd.CycleType == CLDConst.WLatheFinishing) || (cmd.CycleType == CLDConst.WLatheRoughing))
            {
                double curNBlockNum = nc.BlockN;
                NCFiles.DisableOutput();
                CLDSub[cld[3]].Translate(false);
                NCFiles.EnableOutput();
                if (nc.BlockN.Disabled == false)
                {
                    nc.BlockN.Reset();
                    nc.BlockN.Hide(curNBlockNum);
                }
            }
            nc.GInterp.Reset();
            ResetCycleRegisterValue();
        }
        else if (cmd.IsCall)
        {
            switch (cmd.CycleType)
            {
                case CLDConst.WLatheFinishing:
                    var sub = CLDSub[cld[3]];
                    int finishingProc = cld[12];
                    sub.StartCaption = Str(startSubBlockN);
                    sub.EndCaption = Str(endSubBlockN);
                    if (cld[4] > 1)
                    {
                        nc.GCycle.Hide((_fanucGcodeSystem == 3)? 75 : 73);
                        nc.WriteLineWithBlockN(nc.GCycle + " " + nc.Ucyc.ToString(Round(cld[6],3)) + " " + nc.Wcyc.ToString(Round(cld[5],3)) + " R" + Str(cld[4]));
                        nc.WriteLineWithBlockN(nc.GCycle + " P" + sub.StartCaption + " Q" + sub.EndCaption + " " + nc.Ucyc.ToString(Round(cld[8] * xScale,3)) + " " + nc.Wcyc.ToString(Round(cld[7],3)) + " " + nc.F);
                        if (nc.BlockN.Disabled == true)
                            nc.TurnCycBlockN.Show(startSubBlockN);
                    }
                    sub.Translate();
                    if (((nc.GCycle.v == 73) || (nc.GCycle.v == 75)) && (finishingProc == 1))
                    {
                        nc.GCycle.Hide(70);
                        nc.WriteLineWithBlockN(nc.GCycle + " P" + sub.StartCaption + " Q" + sub.EndCaption);
                    }  
                    break;
                case CLDConst.WLatheRoughing:
                    sub = CLDSub[cld[3]];
                    finishingProc = cld[12];
                    sub.StartCaption = Str(startSubBlockN);
                    sub.EndCaption = Str(endSubBlockN);
                    if (cld[5] == 0)
                    {
                        nc.GCycle.Hide((_fanucGcodeSystem == 3)? 73 : 71);
                        nc.WriteLineWithBlockN(nc.GCycle + " " + nc.Ucyc.ToString(Round(cld[4],3)) + " R" + Str(Round(cld[9],3)));
                    }
                    else
                    {
                        nc.GCycle.Hide((_fanucGcodeSystem == 3)? 74 : 72);
                        nc.WriteLineWithBlockN(nc.GCycle + " " + nc.Wcyc.ToString(Round(cld[4],3)) + " R" + Str(Round(cld[9],3)));
                    }
                    nc.WriteLineWithBlockN(nc.GCycle + " P" + sub.StartCaption + " Q" + sub.EndCaption + " " + nc.Ucyc.ToString(Round(cld[8] * xScale,3)) + " " + nc.Wcyc.ToString(Round(cld[7],3)) + " " + nc.F);
                    if (nc.BlockN.Disabled == true)
                        nc.TurnCycBlockN.Show(startSubBlockN);
                    sub.Translate();
                    if ((nc.GCycle.v >= 71) && (nc.GCycle.v <= 74) && (finishingProc == 1))
                    {
                        nc.GCycle.Hide(70);
                        nc.WriteLineWithBlockN(nc.GCycle + " P" + sub.StartCaption + " Q" + sub.EndCaption);
                    }  
                    break;
                case CLDConst.WLatheGrooving:
                    double toolReturnValue,width,depth,widthStep,depthStep;
                    toolReturnValue = cld[9];
                    if (cld[3] == 0)
                    {
                        nc.GCycle.Hide((_fanucGcodeSystem == 3)? 77 : 75);
                        width = cld[5] * xScale;            
                        depth = cld[4];
                        widthStep = cld[7];
                        depthStep = cld[6];
                    }
                    else
                    {
                        nc.GCycle.Hide((_fanucGcodeSystem == 3)? 76 : 74);
                        width = cld[4] * xScale;
                        depth = cld[5];
                        widthStep = cld[6];
                        depthStep = cld[7];
                    } 
                    // nc.WriteLineWithBlockN($"R{Round(toolReturnValue,3)}");
                    nc.WriteLineWithBlockN(nc.GCycle + " " + nc.Ucyc.ToString(Round(width,3)) + " " + nc.Wcyc.ToString(Round(depth,3)) + " " + nc.Pcyc.ToString(Round(widthStep,3)) +
                                           " " + nc.Qcyc.ToString(Round(depthStep,3)) + " " + nc.Rcyc.ToString(Round(cld[8],3)) + " " + nc.F); 
                    break;
                case CLDConst.WLatheThreading:
                    string mP, rP, aP, iR;
                    double chamfAmount, xU, zW;
                    mP = $"{cld[30]}";
                    if (cld[30] < 10)
                        mP = $"0{cld[30]}";
                    else if (cld[30] > 99)
                        mP = "99";
                    chamfAmount = Round(10*(cld[14]/cld[23]));
                    if (chamfAmount < 0)
                        chamfAmount = 0;
                    else if (chamfAmount > 99)
                        chamfAmount = 99;
                    rP = (chamfAmount < 10)? $"0{chamfAmount}" : $"{chamfAmount}";
                    aP = (cld[19] < 10)? $"0{Round(cld[19])}" : $"{Round(cld[19])}";
                    iR = (cld[5] != 0)? $"R{Round(cld[13] - cld[9],3)} " : "";
                    xU = (_fanucGcodeSystem == 1)? nc.X.v - (cld[9] * xScale) : (cld[9] * xScale);
                    zW = (_fanucGcodeSystem == 1)? cld[8] - cld[6] : cld[8];
                    nc.GCycle.Hide((_fanucGcodeSystem == 3)? 78 : 76);
                    nc.WriteLineWithBlockN(nc.GCycle + " P" + mP + rP + aP + " " + nc.Rcyc.ToString(Round(cld[29],3)));
                    nc.WriteLineWithBlockN(nc.GCycle + " " + nc.Ucyc.ToString(Round(xU,3)) + " " + nc.Wcyc.ToString(Round(zW,3)) + " " + iR + nc.Pcyc.ToString(Round(cld[18],3)) + 
                                            " " + nc.Qcyc.ToString(Round(cld[27],3)) + " " + nc.F.ToString(Round(cld[23],3)));
                    break;
                case CLDConst.WLatheThreadingG92:
                    nc.GCycle.Show(92);
                    nc.Z.v = Round(cld[8],3);
                    nc.X.Show(Round(cld[7],3) * xScale);
                    nc.F.Show(Round(cld[23],3));
                    nc.Block.Out();
                    nc.GInterp.Reset();
                    break;
            }
        }
        else if (cmd.IsOff)
        {
            nc.GInterp.RestoreDefaultValue(false);
            cycleTurnOn = false;
            ResetCycleRegisterValue();
        }
    }

    public override void OnSinglePassThread(ICLDSinglePassThreadCommand cmd, CLDArray cld)
    {
        nc.GInterp.v = (_fanucGcodeSystem == 1)? 32 : 33;
        if (cmd.StepIsTPU)
            nc.F.v = 1.0/cmd.Step;
        else
            nc.F.v = cmd.Step;
        nc.QThreadAngle.v = cmd.StartAngle;
    }

    public override void OnAxesBrake(ICLDAxesBrakeCommand cmd, CLDArray cld)
    {
        foreach(CLDAxisBrake axis in cmd.Axes)
        {
            if (axis.IsA)
                nc.MABrake.v = (axis.StateIsOn == true)? 210 : 211;
            else if (axis.IsB)
                nc.MBBrake.v = (axis.StateIsOn == true)? 110 : 111;
            else if (axis.IsC)
                nc.MCBrake.v = (axis.StateIsOn == true)? 10 : 11;
        }
        nc.GInterp.Hide();
        if (nc.MABrake.Changed || nc.MBBrake.Changed || nc.MCBrake.Changed) 
            nc.Block.Out();
    }

    public override void OnClamp(ICLDClampCommand cmd, CLDArray cld)
    {
        if (cmd.IsOn)
        {
            if (cmd.ClampID == 1)
                nc.MClamp.Show(20);
            else if (cmd.ClampID == 2)
                nc.MClamp.Show(120);
        }
        else
        {
            if (cmd.ClampID == 1)
                nc.MClamp.Show(21);
            else if (cmd.ClampID == 2)
                nc.MClamp.Show(121);
        }
        nc.Block.Out();
    }

    public override void OnSyncWait(ICLDSyncWaitCommand cmd, CLDArray cld)
    {
        if (_machineMultichannel == true)
        {
            nc.PSync.v = cmd.PointIndex;
            // nc.MSync.v = cmd.PointIndex;
            nc.Block.Out();
        }
    }

    public override void OnSyncAxes(ICLDSyncAxesCommand cmd, CLDArray cld)
    {
        if (cmd.IsOn)
            nc.MSync.Show(30);
        else
            nc.MSync.Show(31);
        nc.Block.Out();
    }

    public override void OnTakeover(ICLDTakeoverCommand cmd, CLDArray cld)
    {
        operationRevolverID = cmd.TargetConnectorID;
        ChangeRegisterAddress();
    }

    public override void OnStructure(ICLDStructureCommand cmd, CLDArray cld)
    {
        if ((cmd.Comment == "Начало") && (cmd.IsClose == true))
            startCommentOut = false;
    }

    public override void OnDelay(ICLDDelayCommand cmd, CLDArray cld)
    {
        nc.Block.Out();
        nc.GPause.Show(4);
        nc.Pause.Show(cmd.TimeSpan);
        nc.Block.Out();
    }

    public override void OnComment(ICLDCommentCommand cmd, CLDArray cld)
    {
        if ((startCommentOut == false) && (cmd.CLDataS != null) && (currentOperationType != OperationType.Auxiliary) && (cycleTurnOn == false))
            nc.WriteLineWithBlockN($"({Transliterate(cmd.CLDataS)})");
    }

    public override void OnInsert(ICLDInsertCommand cmd, CLDArray cld)
    {
        nc.WriteLineWithBlockN($"({Transliterate(cmd.Text)})");
    }

    public override void OnOpStop(ICLDOpStopCommand cmd, CLDArray cld)
    {
        nc.WriteLineWithBlockN(nc.MPause.ToString(1));
    }

    public override void OnStop(ICLDStopCommand cmd, CLDArray cld)
    {
        nc.WriteLineWithBlockN(nc.MPause.ToString(0));
    }

    public override void StopOnCLData()
    {
        // Do nothing, just to be possible to use CLData breakpoints
    }

    public override void OnFilterString(ref string s, TNCFile ncFile, INCLabel label)
    {
        if (NCFiles.OutputDisabled == true)
        {
            if ((cycleTurnOn == true) && (nc.BlockN.Disabled == true))
                nc.TurnCycBlockN.v ++;
        }
        // if (!NCFiles.OutputDisabled) 
        //     Debug.Write(s);
    }
}
