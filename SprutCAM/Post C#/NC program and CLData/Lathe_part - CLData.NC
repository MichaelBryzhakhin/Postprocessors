Start of file: Lathe_part (противошпиндель)
PartNo
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, -1, 0, -39.3, 114.8, 0, 6.1, 0, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 5, 3, 0, 0.05, 0, 0, 0, 100, 1, 0, 0, 0, 0.2, 1, 1, 0, 0, 11, 150, 10000, 0.5, 0, 100, 100, 1000, 1000, 469.049, 0.487, 0, 0, 0, 0.424, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 1, 3, 54
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Торцевание начисто"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 1, ToolChanged 1, X 15, Y 150, Z 0, D 0, M 1, K 1, L 0, P 0, A 0, R 0, H 0, RC 0, PLANE XY(33), Dur 0, HID 1, NX 0, NY 0, NZ 1, NW 0, RevolverID AxisT
COMMENT    "@IC16 Re0.2 R Проходной tool"
CUTCOM     ON(71), LENGTH(9)1, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 181.2, Y2 0, Z2 173, A 0, T 0, GEOM X 113, Y 0, Z -39.3, NX -1, NY 0, NZ 0, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:Short"
SELWORKPIECE"LeftWorkpieceHolder"
SPINDL     ON(71), NO -1000, K 0, MODE CSS(2), SPEED -150
RAPID      N 10000
MULTIGOTO  COUNT 4, MACHINE, X 525, Z 1000, X2 114.8, Z2 -27.3, GEOM X 114.8, Y 0, Z -27.3, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.034
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
GOTO       X 42.2, Y 0, Z 6.1
COOLNT     ON(71), N 1, #1
FEDRAT     F 0.5, MMPR(316), K 0
EXTCYCLE   ON(71)   LATHEFINISH(400), 1, 3, 3, 0, 0.3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
EXTCYCLE   CALL(52) LATHEFINISH(400), 1, 3, 3, 0, 0.3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
EXTCYCLE   OFF(72)  LATHEFINISH(400), 1, 3, 3, 0, 0.3, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:Short"
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
PPFUN      ENDTECHINFO(59), 250, -1, 0, -39.3, 114.8, 0, 6.1, 0, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 5, 3, 0, 0.05, 0, 0, 0, 100, 1, 0, 0, 0, 0.2, 1, 1, 0, 0, 11, 150, 10000, 0.5, 0, 100, 100, 1000, 1000, 469.049, 0.487, 0, 0, 0, 0.424, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 1, 3, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, 13.5, 0, -39.3, 113, 0, 6.1, 0, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0, 0, 0, 100, 1, 0, 0, 0, 0.2, 1, 1, 0, 0, 11, 150, 10000, 0.5, 0, 100, 100, 1000, 1000, 1573.63, 1.883, 0, 0, 0, 1.76, 0, 2, 0, 0, 0, 0, 0, 0, 7, 0, 2, 0, 0, 1, 3, 54
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Черновое точение по контуру"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
COMMENT    "@IC16 Re0.2 R Проходной tool"
CUTCOM     ON(71), LENGTH(9)1, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:From submachine(Main spindle - Turret)=Z2;X2"
SELWORKPIECE"LeftWorkpieceHolder"
SPINDL     ON(71), NO -1000, K 0, MODE CSS(2), SPEED -150
RAPID      N 10000
MULTIGOTO  COUNT 1, MACHINE, Z2 1, GEOM X 42.2, Y 0, Z 1, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.001
MULTIGOTO  COUNT 1, MACHINE, X2 39.9, GEOM X 39.9, Y 0, Z 1, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
GOTO       X 39.9, Y 0, Z 1
COOLNT     ON(71), N 1, #1, #2, #3
FEDRAT     F 0.5, MMPR(316), K 0
EXTCYCLE   ON(71)   LATHEROUGH(401), 2, 1, 0, 1, 0.3, 0.3, 0.3, 45, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
EXTCYCLE   CALL(52) LATHEROUGH(401), 2, 1, 0, 1, 0.3, 0.3, 0.3, 45, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
EXTCYCLE   OFF(72)  LATHEROUGH(401), 2, 1, 0, 1, 0.3, 0.3, 0.3, 45, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1, #2, #3
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Turret)=X2;Z2"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, X2 181.2, GEOM X 39.9, Y 0, Z 1, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.007
GOHOME     COUNT 1, MACHINE, Z2 173, GEOM X 113, Y 0, Z 1, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.004
GOHOME     COUNT 2, MACHINE, X 535, Z 663, GEOM X 113, Y 0, Z -39.3, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.034
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
PPFUN      ENDTECHINFO(59), 250, 13.5, 0, -39.3, 113, 0, 6.1, 0, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0, 0, 0, 100, 1, 0, 0, 0, 0.2, 1, 1, 0, 0, 11, 150, 10000, 0.5, 0, 100, 100, 1000, 1000, 1573.63, 1.883, 0, 0, 0, 1.76, 0, 2, 0, 0, 0, 0, 0, 0, 7, 0, 2, 1, 0, 1, 3, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, 0, 0, -130.8, 693, 0, 10, 100, 3.902, 3.902, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0.02, 0, 0, 8, 7, 16, 100, 1.117, 0, 5, 0, 0, 0, 2, 199, 10000, 200, 200, 200, 200, 200, 10000, 1913.5, 0.364, 0, 0, 0, 0.258, 0, 3, 0, 0, 0, 0, 0, 0, 5, 0, 2, 1, 0, 1, 0, 54
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Сверление отверстия в центре предварительно"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 7, ToolChanged 1, X 0, Y 0, Z 100, D 16, M -5, K 7, L 100, P 0, A 128, R 0, H 3.902, RC 0, PLANE XY(33), Dur 60, HID 7, NX 0, NY 0, NZ 1, NW 0, RevolverID AxisT
COMMENT    "@16мм Сверло"
SELWORKPIECE"LeftWorkpieceHolder"
SPINDL     ON(71), NO -199, K 0, MODE RPM(0)
CUTCOM     ON(71), LENGTH(9)5, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 181.2, Y2 0, Z2 173, A 0, T 6, GEOM X 163, Y 0, Z -130.8, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:From submachine(Main spindle - Turret)=C;Z2;X2"
RAPID      N 10000
MULTIGOTO  COUNT 1, MACHINE, Z2 10, GEOM X 163, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.014
MULTIGOTO  COUNT 1, MACHINE, X2 0, GEOM X 0, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.016
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
RAPID      N 10000
GOTO       X 0, Y 0, Z 10
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие1"
COOLNT     ON(71), N 1, #1, #3
EXTCYCLE   ON(71)   W5DDRILL(481), 0, 0, -1, 8.4, 10, 59.902, 1, 200, 1, 200, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   CALL(52) W5DDRILL(481), 0, 0, -1, 8.4, 10, 59.902, 1, 200, 1, 200, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   OFF(72)  W5DDRILL(481), 0, 0, -1, 8.4, 10, 59.902, 1, 200, 1, 200, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие1"
RAPID      N 10000
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1, #3
SPINDL     OFF(72), NO 0, K 0
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Turret)=X2;Z2"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, X2 181.2, GEOM X 0, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.016
GOHOME     COUNT 1, MACHINE, Z2 173, GEOM X 163, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.014
GOHOME     COUNT 2, MACHINE, X 535, Z 663, GEOM X 163, Y 0, Z -130.8, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.034
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
CUTCOM     OFF(72), LENGTH(9)0, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
PPFUN      ENDTECHINFO(59), 250, 0, 0, -130.8, 693, 0, 10, 100, 3.902, 3.902, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0.02, 0, 0, 8, 7, 16, 100, 1.117, 0, 5, 0, 0, 0, 2, 199, 10000, 200, 200, 200, 200, 200, 10000, 1913.5, 0.364, 0, 0, 0, 0.258, 0, 3, 0, 0, 0, 0, 0, 0, 5, 0, 2, 1, 0, 1, 0, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, -339, -262.406, -119.3, -0.002, 108.251, 10, 100, 1.803, 1.803, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0.02, 0, 0, 8, 5, 6, 75, 1.03, 0, 5, 0, 0, 0, 2, 398, 10000, 200, 200, 200, 200, 200, 10000, 1126.892, 0.525, 0, 0, 0, 0.415, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 54
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Сверление отв. D6 по торцу 1"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 5, ToolChanged 1, X 0, Y 0, Z 75, D 6, M -5, K 5, L 75, P 0, A 118, R 0, H 1.803, RC 0, PLANE XY(33), Dur 60, HID 5, NX 0, NY 0, NZ 1, NW 0, RevolverID AxisT
COMMENT    "@6мм Сверло"
PLANE      XY
SPINDL     ON(71), NO 398, K 0, MODE RPM(0)
CUTCOM     ON(71), LENGTH(9)5, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 181.2, Y2 0, Z2 173, A 0, T 4, GEOM X 178, Y 0, Z -119.3, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:From submachine(Main spindle - Turret)=C;Z2;X2"
RAPID      N 10000
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
MULTIGOTO  COUNT 1, MACHINE, C 0, GEOM X 178, Y 0, Z -119.3, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
MULTIGOTO  COUNT 1, MACHINE, Z2 10, GEOM X 178, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.013
MULTIGOTO  COUNT 1, MACHINE, X2 0.003, GEOM X 0.003, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.018
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
RAPID      N 10000
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
MULTIGOTO  COUNT 3, MACHINE, C 0, X2 0.003, Z2 10, GEOM X 0.003, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
AXESBRAKE  COUNT 1, AxisCPos(3) ON(71)
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие1"
PLANE      XY
AXESBRAKE  COUNT 1, AxisCPos(3) ON(71)
COOLNT     ON(71), N 1, #1
EXTCYCLE   ON(71)   W5DCHIPREMOVING(483), 0, 0, -1, 9.4, 10, 50.6, 1, 200, 1, 200, 1, 10000, 0, 0, 13.533, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   CALL(52) W5DCHIPREMOVING(483), 0, 0, -1, 9.4, 10, 50.6, 1, 200, 1, 200, 1, 10000, 0, 0, 13.533, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   OFF(72)  W5DCHIPREMOVING(483), 0, 0, -1, 9.4, 10, 50.6, 1, 200, 1, 200, 1, 10000, 0, 0, 13.533, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие1"
RAPID      N 10000
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1
SPINDL     OFF(72), NO 0, K 0
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Turret)=X2;Z2"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, X2 181.2, GEOM X 0.003, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.018
GOHOME     COUNT 1, MACHINE, Z2 173, GEOM X 178, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.013
GOHOME     COUNT 2, MACHINE, X 535, Z 663, GEOM X 178, Y 0, Z -119.3, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.034
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
CUTCOM     OFF(72), LENGTH(9)0, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
PPFUN      ENDTECHINFO(59), 250, -339, -262.406, -119.3, -0.002, 108.251, 10, 100, 1.803, 1.803, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0.02, 0, 0, 8, 5, 6, 75, 1.03, 0, 5, 0, 0, 0, 2, 398, 10000, 200, 200, 200, 200, 200, 10000, 1126.892, 0.525, 0, 0, 0, 0.415, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, 0, 0, -130.8, 295.5, 229.497, 10, 100, 3.902, 3.902, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0.02, 0, 0, 8, 7, 16, 100, 1.117, 0, 5, 0, 0, 0, 2, 199, 10000, 200, 200, 200, 200, 200, 10000, 1196.988, 0.325, 0, 0, 0, 0.219, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 1, 0, 54
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Токарная обработка отверстий 1"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 7, ToolChanged 1, X 0, Y 0, Z 100, D 16, M -5, K 7, L 100, P 0, A 128, R 0, H 3.902, RC 0, PLANE XY(33), Dur 60, HID 7, NX 0, NY 0, NZ 1, NW 0, RevolverID AxisT
COMMENT    "@16мм Сверло"
SELWORKPIECE"LeftWorkpieceHolder"
SPINDL     ON(71), NO -199, K 0, MODE RPM(0)
CUTCOM     ON(71), LENGTH(9)5, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 181.2, Y2 0, Z2 173, A 0, T 6, GEOM X 163, Y 0, Z -130.8, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:From submachine(Main spindle - Turret)=C;Z2;X2"
RAPID      N 10000
MULTIGOTO  COUNT 1, MACHINE, Z2 10, GEOM X 163, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.014
MULTIGOTO  COUNT 1, MACHINE, X2 0, GEOM X 0, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.016
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
RAPID      N 10000
GOTO       X 0, Y 0, Z 10
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие1"
COOLNT     ON(71), N 1, #1
EXTCYCLE   ON(71)   W5DBORE5(485), 0, 0, -1, 12.292, 13.892, 56, 1, 200, 1, 200, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   CALL(52) W5DBORE5(485), 0, 0, -1, 12.292, 13.892, 56, 1, 200, 1, 200, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   OFF(72)  W5DBORE5(485), 0, 0, -1, 12.292, 13.892, 56, 1, 200, 1, 200, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие1"
RAPID      N 10000
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Turret)=X2;Z2"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, X2 181.2, GEOM X 0, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.016
GOHOME     COUNT 1, MACHINE, Z2 173, GEOM X 163, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.014
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
GOHOME     COUNT 3, MACHINE, X 535, Z 663, C 0, GEOM X 163, Y 0, Z -130.8, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.034
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
CUTCOM     OFF(72), LENGTH(9)0, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
PPFUN      ENDTECHINFO(59), 250, 0, 0, -130.8, 295.5, 229.497, 10, 100, 3.902, 3.902, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0.02, 0, 0, 8, 7, 16, 100, 1.117, 0, 5, 0, 0, 0, 2, 199, 10000, 200, 200, 200, 200, 200, 10000, 1196.988, 0.325, 0, 0, 0, 0.219, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 1, 0, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, 0, 0, -93.3, 428, 248.5, 10, 100, 3.902, 3.902, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0.02, 0, 0, 12, 10, 16, 180, 1.117, 0, 5, 0, 0, 0, 2, 199, 10000, 200, 200, 200, 200, 200, 10000, 1362.86, 0.537, 0, 0, 0, 0.439, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 1, 0, 54
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Токарная обработка отверстий 2"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 10, ToolChanged 1, X 0, Y 0, Z 180, D 16, M -5, K 10, L 180, P 0, A 128, R 0, H 3.902, RC 0, PLANE XY(33), Dur 60, HID 10, NX 0, NY 0, NZ 1, NW 0, RevolverID AxisT
COMMENT    "@16мм Метчик"
SELWORKPIECE"LeftWorkpieceHolder"
SPINDL     ON(71), NO -199, K 0, MODE RPM(0)
CUTCOM     ON(71), LENGTH(9)5, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 181.2, Y2 0, Z2 173, A 0, T 9, GEOM X 179.5, Y 0, Z -93.3, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:From submachine(Main spindle - Turret)=C;Z2;X2"
RAPID      N 10000
MULTIGOTO  COUNT 1, MACHINE, Z2 10, GEOM X 179.5, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.01
MULTIGOTO  COUNT 1, MACHINE, X2 0, GEOM X 0, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.018
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
RAPID      N 10000
GOTO       X 0, Y 0, Z 10
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие1"
COOLNT     ON(71), N 1, #1
EXTCYCLE   ON(71)   W5DTAP(484), 0, 0, -1, 12.292, 13.892, 56, 1, 200, 1, 200, 1, 10000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   CALL(52) W5DTAP(484), 0, 0, -1, 12.292, 13.892, 56, 1, 200, 1, 200, 1, 10000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   OFF(72)  W5DTAP(484), 0, 0, -1, 12.292, 13.892, 56, 1, 200, 1, 200, 1, 10000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие1"
RAPID      N 10000
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Turret)=X2;Z2"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, X2 181.2, GEOM X 0, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.018
GOHOME     COUNT 1, MACHINE, Z2 173, GEOM X 179.5, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.01
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
GOHOME     COUNT 3, MACHINE, X 535, Z 663, C 0, GEOM X 179.5, Y 0, Z -93.3, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.034
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
CUTCOM     OFF(72), LENGTH(9)0, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
PPFUN      ENDTECHINFO(59), 250, 0, 0, -93.3, 428, 248.5, 10, 100, 3.902, 3.902, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0.02, 0, 0, 12, 10, 16, 180, 1.117, 0, 5, 0, 0, 0, 2, 199, 10000, 200, 200, 200, 200, 200, 10000, 1362.86, 0.537, 0, 0, 0, 0.439, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 1, 0, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, 7.2, 0, -73.3, 638.011, 121.25, 10, 0, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0, 0, 0, 101, 3, 0, 0, 0, 0.2, 3, 3, 0, 0, 11, 150, 10000, 0.5, 0, 100, 100, 1000, 1000, 2152.447, 0.227, 0, 0, 0, 0.129, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 1, 2, 54
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Расточка отверстия по центру"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 3, ToolChanged 1, X -6, Y 160, Z 0, D 0, M 3, K 3, L 0, P 0, A 0, R 0, H 0, RC 0, PLANE XY(33), Dur 0, HID 3, NX 0, NY 0, NZ 1, NW 0, RevolverID AxisT
COMMENT    "@Custom"
CUTCOM     ON(71), LENGTH(9)3, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 181.2, Y2 0, Z2 173, A 0, T 2, GEOM X 185.5, Y 0, Z -73.3, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:From submachine(Main spindle - Turret)=Z2(10);X2"
SELWORKPIECE"LeftWorkpieceHolder"
SPINDL     ON(71), NO -1000, K 0, MODE CSS(2), SPEED -150
RAPID      N 10000
MULTIGOTO  COUNT 1, MACHINE, Z2 10, GEOM X 185.5, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.008
MULTIGOTO  COUNT 1, MACHINE, X2 7.5, GEOM X 7.5, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.018
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
RAPID      N 10000
GOTO       X 7.5, Y 0, Z 1.3
PPRINT     "#KeyPoint: StartCutting"
GOTO       X 8.5, Y 0, Z 1.3
COOLNT     ON(71), N 1, #1
FEDRAT     F 0.5, MMPR(316), K 0
GOTO       X 8.5, Y 0, Z -12.688
GOTO       X 7.5, Y 0, Z -12.688
GOTO       X 7.2, Y 0, Z -12.388
RAPID      N 10000
GOTO       X 7.2, Y 0, Z 1.3
GOTO       X 9.5, Y 0, Z 1.3
FEDRAT     F 0.5, MMPR(316), K 0
GOTO       X 9.5, Y 0, Z -12.688
GOTO       X 8.5, Y 0, Z -12.688
GOTO       X 8.2, Y 0, Z -12.388
RAPID      N 10000
GOTO       X 8.2, Y 0, Z 1.3
GOTO       X 10.5, Y 0, Z 1.3
FEDRAT     F 0.5, MMPR(316), K 0
GOTO       X 10.5, Y 0, Z -0.517
GOTO       X 9.701, Y 0, Z -1.316
GOTO       X 9.503, Y 0, Z -12.688
GOTO       X 9.5, Y 0, Z -12.688
GOTO       X 9.2, Y 0, Z -12.388
RAPID      N 10000
GOTO       X 9.2, Y 0, Z 1.3
GOTO       X 11.2, Y 0, Z 1.3
FEDRAT     F 0.5, MMPR(316), K 0
GOTO       X 11.2, Y 0, Z 0.183
GOTO       X 10.5, Y 0, Z -0.517
GOTO       X 10.2, Y 0, Z -0.217
RAPID      N 10000
GOTO       X 10.2, Y 0, Z 1
GOTO       X 11.5, Y 0, Z 1
FEDRAT     F 0.5, MMPR(316), K 0
GOTO       X 11.5, Y 0, Z -0.117
GOTO       X 10.001, Y 0, Z -1.616
GOTO       X 9.803, Y 0, Z -12.988
GOTO       X 7.8, Y 0, Z -12.988
RAPID      N 10000
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Turret)=Z2(10);X2; Z2"
RAPID      N 10000
MULTIGOTO  COUNT 1, MACHINE, Z2 10, GEOM X 7.8, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.002
GOHOME     COUNT 1, MACHINE, X2 181.2, GEOM X 7.8, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.018
GOHOME     COUNT 1, MACHINE, Z2 173, GEOM X 185.5, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.008
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
GOHOME     COUNT 3, MACHINE, X 535, Z 663, C 0, GEOM X 185.5, Y 0, Z -73.3, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.034
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
PPFUN      ENDTECHINFO(59), 250, 7.2, 0, -73.3, 638.011, 121.25, 10, 0, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0, 0, 0, 101, 3, 0, 0, 0, 0.2, 3, 3, 0, 0, 11, 150, 10000, 0.5, 0, 100, 100, 1000, 1000, 2152.447, 0.227, 0, 0, 0, 0.129, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 1, 2, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, 13.441, -272.798, -39.3, 270.5, 0, 3, 0, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0, 0, 0, 100, 1, 0, 0, 0, 0.2, 1, 1, 0, 0, 11, 150, 10000, 0.5, 0, 100, 100, 1000, 1000, 801.427, 0.202, 0, 0, 0, 0.143, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 1, 3, 54
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Чистовой контур снаружи"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 1, ToolChanged 1, X 15, Y 150, Z 0, D 0, M 1, K 1, L 0, P 0, A 0, R 0, H 0, RC 0, PLANE XY(33), Dur 0, HID 1, NX 0, NY 0, NZ 1, NW 0, RevolverID AxisT
COMMENT    "@IC16 Re0.2 R Проходной tool"
CUTCOM     ON(71), LENGTH(9)1, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 181.2, Y2 0, Z2 173, A 0, T 0, GEOM X 113, Y 0, Z -39.3, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:From submachine(Main spindle - Turret)=Z2;X2"
SELWORKPIECE"LeftWorkpieceHolder"
SPINDL     ON(71), NO -1000, K 0, MODE CSS(2), SPEED -150
RAPID      N 10000
MULTIGOTO  COUNT 1, MACHINE, Z2 3, GEOM X 113, Y 0, Z 3, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.004
MULTIGOTO  COUNT 1, MACHINE, X2 13.5, GEOM X 13.5, Y 0, Z 3, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.01
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
GOTO       X 13.5, Y 0, Z 3
PPRINT     "#KeyPoint: StartCutting"
COOLNT     ON(71), N 1, #1
FEDRAT     F 0.5, MMPR(316), K 0
GOTO       X 13.441, Y 0, Z -0.059
GOTO       X 15, Y 0, Z -1.617
GOTO       X 15, Y 0, Z -20
GOTO       X 34.9, Y 0, Z -20
GOTO       X 34.9, Y 0, Z -34.67
GOTO       X 37.4, Y 0, Z -34.47
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1
SPINDL     OFF(72), NO 0, K 0
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Turret)=X2;Z2"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, X2 181.2, GEOM X 37.4, Y 0, Z -34.47, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.008
GOHOME     COUNT 1, MACHINE, Z2 173, GEOM X 113, Y 0, Z -34.47, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
GOHOME     COUNT 3, MACHINE, X 535, Z 663, C 0, GEOM X 113, Y 0, Z -39.3, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.034
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
WAIT       ID(SyncPoint2), Index(-1)
WAIT       ID(SyncPoint9), Index(1)
PPFUN      ENDTECHINFO(59), 250, 13.441, -272.798, -39.3, 270.5, 0, 3, 0, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0, 0, 0, 100, 1, 0, 0, 0, 0.2, 1, 1, 0, 0, 11, 150, 10000, 0.5, 0, 100, 100, 1000, 1000, 801.427, 0.202, 0, 0, 0, 0.143, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 1, 3, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, -371.747, -450.712, -24, 534.984, 194.098, 465.675, 10, -20, -24, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0.02, 0, 0, 0, 6, 4, 60, 0, 0, 6, 0, 0, 0, 2, 265, 10000, 200, 200, 200, 200, 200, 200, 5088.229, 4.007, 0, 0, 0, 3.804, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 54
WAIT       ID(SyncPoint9), Index(1)
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Фрезерование всех пазов по торцу начисто (полярная) 1"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 6, ToolChanged 1, X 0, Y 0, Z 160, D 4, M -6, K 6, L 60, P 0, A 0, R 0, H 0, RC 0, PLANE YZ(37), Dur 60, HID 0, NX 0, NY 0, NZ 1, NW 0, RevolverID Tool110
COMMENT    "@4мм Цилиндрическая фреза"
PLANE      XY
SPINDL     ON(71), NO 265, K 0, MODE RPM(0)
CUTCOM     ON(71), LENGTH(9)6, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 183, Y2 0, Z2 603.8, A 0, T 0, GEOM X 165, Y 0, Z 465.675, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:Custom=X2;Z2;BC;Z;X"
RAPID      N 10000
MULTIGOTO  COUNT 1, MACHINE, X2 174, GEOM X 175, Y 0, Z 162.675, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.001
MULTIGOTO  COUNT 1, MACHINE, Z2 173.8, GEOM X 175, Y 0, Z 162.675, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.043
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
MULTIGOTO  COUNT 2, MACHINE, C -89.555, B -90, GEOM X 175, Y 0, Z 162.675, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.009
MULTIGOTO  COUNT 1, MACHINE, Z 10, GEOM X 175, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.009
MULTIGOTO  COUNT 1, MACHINE, X 28.928, GEOM X 28.928, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.051
MULTIGOTO  COUNT 1, MACHINE, S 0, GEOM X 28.928, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
MULTIGOTO  COUNT 1, MACHINE, C 0, GEOM X 28.928, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.009
INTERP     ON(71) POLAR(9021), P1 0
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "String", Comment "Уровень: -22"
COOLNT     ON(71), N 1, #1
FEDRAT     F 2000, MMPM(315), K 8192
GOTO       X 0.225, Y -28.928, Z 10
GOTO       X 0.225, Y -28.928, Z -15.9
FEDRAT     F 200, MMPM(315), K 256
GOTO       X 0.225, Y -28.928, Z -19.9
FEDRAT     F 200, MMPM(315), K 16
PLANE      XY
CIRCLE     XC -0.461, YC -28.2, ZC -20.024, R 1, XE -0.445, YE -27.2, ZE -20.024
CIRCLE     XC -0.461, YC -28.2, ZC -20.353, R 1, XE -0.445, YE -27.2, ZE -20.353
CIRCLE     XC -0.461, YC -28.2, ZC -20.683, R 1, XE -0.445, YE -27.2, ZE -20.683
CIRCLE     XC -0.461, YC -28.2, ZC -21.012, R 1, XE -0.445, YE -27.2, ZE -21.012
CIRCLE     XC -0.461, YC -28.2, ZC -21.341, R 1, XE -0.445, YE -27.2, ZE -21.341
CIRCLE     XC -0.461, YC -28.2, ZC -21.671, R 1, XE -0.445, YE -27.2, ZE -21.671
CIRCLE     XC -0.461, YC -28.2, ZC -22, R 1, XE -0.445, YE -27.2, ZE -22
FEDRAT     F 200, MMPM(315), K 0
CIRCLE     XC -0.461, YC -28.2, ZC -22, R 1, XE -0.445, YE -27.2, ZE -22
FEDRAT     F 200, MMPM(315), K 32
CIRCLE     XC -0.008, YC -0.021, ZC -22, R -27.183, XE -23.605, YE -13.515, ZE -22
CIRCLE     XC -24.42, YC -14.099, ZC -22, R 1.002, XE -25.288, YE -14.6, ZE -22
CIRCLE     XC -0.019, YC -0.033, ZC -22, R 29.167, XE 0.098, YE -29.2, ZE -22
CIRCLE     XC 0, YC -28.202, ZC -22, R 1.002, XE 0, YE -27.2, ZE -22
GOTO       X -0.445, Y -27.2, Z -22
CIRCLE     XC -0.46, YC -28.135, ZC -22, R 0.935, XE -1.255, YE -27.642, ZE -22
STRUCTURE  OFF(72), TYPE "String", Comment "Уровень: -22"
STRUCTURE  ON(71), TYPE "String", Comment "Уровень: -24"
CIRCLE     XC -0.915, YC -27.853, ZC -21.9, R 0.4, XE -1.184, YE -28.149, ZE -21.9
FEDRAT     F 200, MMPM(315), K 64
GOTO       X -0.318, Y -28.933, Z -21.9
FEDRAT     F 200, MMPM(315), K 16
CIRCLE     XC -0.05, YC -28.637, ZC -21.9, R 0.4, XE 0.225, YE -28.928, ZE -21.9
CIRCLE     XC -0.461, YC -28.2, ZC -22.024, R 1, XE -0.445, YE -27.2, ZE -22.024
CIRCLE     XC -0.461, YC -28.2, ZC -22.353, R 1, XE -0.445, YE -27.2, ZE -22.353
CIRCLE     XC -0.461, YC -28.2, ZC -22.683, R 1, XE -0.445, YE -27.2, ZE -22.683
CIRCLE     XC -0.461, YC -28.2, ZC -23.012, R 1, XE -0.445, YE -27.2, ZE -23.012
CIRCLE     XC -0.461, YC -28.2, ZC -23.341, R 1, XE -0.445, YE -27.2, ZE -23.341
CIRCLE     XC -0.461, YC -28.2, ZC -23.671, R 1, XE -0.445, YE -27.2, ZE -23.671
CIRCLE     XC -0.461, YC -28.2, ZC -24, R 1, XE -0.445, YE -27.2, ZE -24
FEDRAT     F 200, MMPM(315), K 0
CIRCLE     XC -0.461, YC -28.2, ZC -24, R 1, XE -0.445, YE -27.2, ZE -24
FEDRAT     F 200, MMPM(315), K 32
CIRCLE     XC -0.008, YC -0.021, ZC -24, R -27.183, XE -23.605, YE -13.515, ZE -24
CIRCLE     XC -24.42, YC -14.099, ZC -24, R 1.002, XE -25.288, YE -14.6, ZE -24
CIRCLE     XC -0.019, YC -0.033, ZC -24, R 29.167, XE 0.098, YE -29.2, ZE -24
CIRCLE     XC 0, YC -28.202, ZC -24, R 1.002, XE 0, YE -27.2, ZE -24
GOTO       X -0.445, Y -27.2, Z -24
CIRCLE     XC -0.46, YC -28.135, ZC -24, R 0.935, XE -1.255, YE -27.642, ZE -24
FEDRAT     F 2000, MMPM(315), K 8192
GOTO       X -1.255, Y -27.642, Z 10
STRUCTURE  OFF(72), TYPE "String", Comment "Уровень: -24"
STRUCTURE  ON(71), TYPE "String", Comment "Уровень: -22"
COOLNT     ON(71), N 1, #1
GOTO       X 24.94, Y 14.659, Z 10
GOTO       X 24.94, Y 14.659, Z -15.9
FEDRAT     F 200, MMPM(315), K 256
GOTO       X 24.94, Y 14.659, Z -19.9
FEDRAT     F 200, MMPM(315), K 16
CIRCLE     XC 24.652, YC 13.701, ZC -20.024, R 1, XE 23.778, YE 13.215, ZE -20.024
CIRCLE     XC 24.652, YC 13.701, ZC -20.353, R 1, XE 23.778, YE 13.215, ZE -20.353
CIRCLE     XC 24.652, YC 13.701, ZC -20.683, R 1, XE 23.778, YE 13.215, ZE -20.683
CIRCLE     XC 24.652, YC 13.701, ZC -21.012, R 1, XE 23.778, YE 13.215, ZE -21.012
CIRCLE     XC 24.652, YC 13.701, ZC -21.341, R 1, XE 23.778, YE 13.215, ZE -21.341
CIRCLE     XC 24.652, YC 13.701, ZC -21.671, R 1, XE 23.778, YE 13.215, ZE -21.671
CIRCLE     XC 24.652, YC 13.701, ZC -22, R 1, XE 23.778, YE 13.215, ZE -22
FEDRAT     F 200, MMPM(315), K 0
CIRCLE     XC 24.652, YC 13.701, ZC -22, R 1, XE 23.778, YE 13.215, ZE -22
FEDRAT     F 200, MMPM(315), K 32
CIRCLE     XC 0.022, YC 0.004, ZC -22, R -27.183, XE 23.507, YE -13.685, ZE -22
CIRCLE     XC 24.42, YC -14.099, ZC -22, R 1.002, XE 25.288, YE -14.6, ZE -22
CIRCLE     XC 0.038, YC 0, ZC -22, R 29.167, XE 25.239, YE 14.685, ZE -22
CIRCLE     XC 24.424, YC 14.101, ZC -22, R 1.002, XE 23.556, YE 13.6, ZE -22
GOTO       X 23.778, Y 13.215, Z -22
CIRCLE     XC 24.596, YC 13.669, ZC -22, R 0.935, XE 24.566, YE 12.734, ZE -22
STRUCTURE  OFF(72), TYPE "String", Comment "Уровень: -22"
STRUCTURE  ON(71), TYPE "String", Comment "Уровень: -24"
CIRCLE     XC 24.579, YC 13.134, ZC -21.9, R 0.4, XE 24.97, YE 13.049, ZE -21.9
FEDRAT     F 200, MMPM(315), K 64
GOTO       X 25.216, Y 14.191, Z -21.9
FEDRAT     F 200, MMPM(315), K 16
CIRCLE     XC 24.825, YC 14.275, ZC -21.9, R 0.4, XE 24.94, YE 14.659, ZE -21.9
CIRCLE     XC 24.652, YC 13.701, ZC -22.024, R 1, XE 23.778, YE 13.215, ZE -22.024
CIRCLE     XC 24.652, YC 13.701, ZC -22.353, R 1, XE 23.778, YE 13.215, ZE -22.353
CIRCLE     XC 24.652, YC 13.701, ZC -22.683, R 1, XE 23.778, YE 13.215, ZE -22.683
CIRCLE     XC 24.652, YC 13.701, ZC -23.012, R 1, XE 23.778, YE 13.215, ZE -23.012
CIRCLE     XC 24.652, YC 13.701, ZC -23.341, R 1, XE 23.778, YE 13.215, ZE -23.341
CIRCLE     XC 24.652, YC 13.701, ZC -23.671, R 1, XE 23.778, YE 13.215, ZE -23.671
CIRCLE     XC 24.652, YC 13.701, ZC -24, R 1, XE 23.778, YE 13.215, ZE -24
FEDRAT     F 200, MMPM(315), K 0
CIRCLE     XC 24.652, YC 13.701, ZC -24, R 1, XE 23.778, YE 13.215, ZE -24
FEDRAT     F 200, MMPM(315), K 32
CIRCLE     XC 0.022, YC 0.004, ZC -24, R -27.183, XE 23.507, YE -13.685, ZE -24
CIRCLE     XC 24.42, YC -14.099, ZC -24, R 1.002, XE 25.288, YE -14.6, ZE -24
CIRCLE     XC 0.038, YC 0, ZC -24, R 29.167, XE 25.239, YE 14.685, ZE -24
CIRCLE     XC 24.424, YC 14.101, ZC -24, R 1.002, XE 23.556, YE 13.6, ZE -24
GOTO       X 23.778, Y 13.215, Z -24
CIRCLE     XC 24.596, YC 13.669, ZC -24, R 0.935, XE 24.566, YE 12.734, ZE -24
FEDRAT     F 600, MMPM(315), K 8192
GOTO       X 24.566, Y 12.734, Z 10
STRUCTURE  OFF(72), TYPE "String", Comment "Уровень: -24"
STRUCTURE  ON(71), TYPE "String", Comment "Уровень: -22"
COOLNT     ON(71), N 1, #1
GOTO       X -25.165, Y 14.269, Z 10
GOTO       X -25.165, Y 14.269, Z -15.9
FEDRAT     F 200, MMPM(315), K 256
GOTO       X -25.165, Y 14.269, Z -19.9
FEDRAT     F 200, MMPM(315), K 16
CIRCLE     XC -24.191, YC 14.499, ZC -20.024, R 1, XE -23.333, YE 13.985, ZE -20.024
CIRCLE     XC -24.191, YC 14.499, ZC -20.353, R 1, XE -23.333, YE 13.985, ZE -20.353
CIRCLE     XC -24.191, YC 14.499, ZC -20.683, R 1, XE -23.333, YE 13.985, ZE -20.683
CIRCLE     XC -24.191, YC 14.499, ZC -21.012, R 1, XE -23.333, YE 13.985, ZE -21.012
CIRCLE     XC -24.191, YC 14.499, ZC -21.341, R 1, XE -23.333, YE 13.985, ZE -21.341
CIRCLE     XC -24.191, YC 14.499, ZC -21.671, R 1, XE -23.333, YE 13.985, ZE -21.671
CIRCLE     XC -24.191, YC 14.499, ZC -22, R 1, XE -23.333, YE 13.985, ZE -22
FEDRAT     F 200, MMPM(315), K 0
CIRCLE     XC -24.191, YC 14.499, ZC -22, R 1, XE -23.333, YE 13.985, ZE -22
FEDRAT     F 200, MMPM(315), K 32
CIRCLE     XC -0.014, YC 0.017, ZC -22, R -27.183, XE 0.098, YE 27.2, ZE -22
CIRCLE     XC 0, YC 28.198, ZC -22, R 1.002, XE 0, YE 29.2, ZE -22
CIRCLE     XC -0.019, YC 0.033, ZC -22, R 29.167, XE -25.337, YE 14.515, ZE -22
CIRCLE     XC -24.424, YC 14.101, ZC -22, R 1.002, XE -23.556, YE 13.6, ZE -22
GOTO       X -23.333, Y 13.985, Z -22
CIRCLE     XC -24.136, YC 14.466, ZC -22, R 0.935, XE -23.311, YE 14.908, ZE -22
STRUCTURE  OFF(72), TYPE "String", Comment "Уровень: -22"
STRUCTURE  ON(71), TYPE "String", Comment "Уровень: -24"
CIRCLE     XC -23.664, YC 14.719, ZC -21.9, R 0.4, XE -23.786, YE 15.1, ZE -21.9
FEDRAT     F 200, MMPM(315), K 64
GOTO       X -24.898, Y 14.742, Z -21.9
FEDRAT     F 200, MMPM(315), K 16
CIRCLE     XC -24.775, YC 14.362, ZC -21.9, R 0.4, XE -25.165, YE 14.269, ZE -21.9
CIRCLE     XC -24.191, YC 14.499, ZC -22.024, R 1, XE -23.333, YE 13.985, ZE -22.024
CIRCLE     XC -24.191, YC 14.499, ZC -22.353, R 1, XE -23.333, YE 13.985, ZE -22.353
CIRCLE     XC -24.191, YC 14.499, ZC -22.683, R 1, XE -23.333, YE 13.985, ZE -22.683
CIRCLE     XC -24.191, YC 14.499, ZC -23.012, R 1, XE -23.333, YE 13.985, ZE -23.012
CIRCLE     XC -24.191, YC 14.499, ZC -23.341, R 1, XE -23.333, YE 13.985, ZE -23.341
CIRCLE     XC -24.191, YC 14.499, ZC -23.671, R 1, XE -23.333, YE 13.985, ZE -23.671
CIRCLE     XC -24.191, YC 14.499, ZC -24, R 1, XE -23.333, YE 13.985, ZE -24
FEDRAT     F 200, MMPM(315), K 0
CIRCLE     XC -24.191, YC 14.499, ZC -24, R 1, XE -23.333, YE 13.985, ZE -24
FEDRAT     F 200, MMPM(315), K 32
CIRCLE     XC -0.014, YC 0.017, ZC -24, R -27.183, XE 0.098, YE 27.2, ZE -24
CIRCLE     XC 0, YC 28.198, ZC -24, R 1.002, XE 0, YE 29.2, ZE -24
CIRCLE     XC -0.019, YC 0.033, ZC -24, R 29.167, XE -25.337, YE 14.515, ZE -24
CIRCLE     XC -24.424, YC 14.101, ZC -24, R 1.002, XE -23.556, YE 13.6, ZE -24
GOTO       X -23.333, Y 13.985, Z -24
CIRCLE     XC -24.136, YC 14.466, ZC -24, R 0.935, XE -23.311, YE 14.908, ZE -24
FEDRAT     F 600, MMPM(315), K 8192
GOTO       X -23.311, Y 14.908, Z 10
STRUCTURE  OFF(72), TYPE "String", Comment "Уровень: -24"
INTERP     OFF(72) POLAR(9021), P1 0
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1
SPINDL     OFF(72), NO 0, K 0
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:Custom=X;Z"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, X 535, GEOM X 27.67, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.051
GOHOME     COUNT 1, MACHINE, Z 663, GEOM X 535, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.009
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
GOHOME     COUNT 4, MACHINE, C 0, B 0, X2 181.2, Z2 173, GEOM X 165, Y 0, Z 465.675, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.015
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
CUTCOM     OFF(72), LENGTH(9)0, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
WAIT       ID(SyncPoint3), Index(2)
PPFUN      ENDTECHINFO(59), 250, -371.747, -450.712, -24, 534.984, 194.098, 465.675, 10, -20, -24, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0.02, 0, 0, 0, 6, 4, 60, 0, 0, 6, 0, 0, 0, 2, 265, 10000, 200, 200, 200, 200, 200, 200, 5088.229, 4.007, 0, 0, 0, 3.804, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, -100.41, -177.997, -119.3, 553, 216.506, 10, 100, 1.803, 1.803, 0, -39.895, -39.895, -91.5, 39.895, 39.895, 0, 3, 0, 0.05, 0.02, 0, 0, 8, 5, 6, 75, 1.03, 0, 5, 0, 0, 0, 2, 398, 10000, 200, 200, 200, 200, 200, 10000, 2011.701, 0.262, 0, 0, 0, 0.22, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 54
WAIT       ID(SyncPoint3), Index(2)
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Сверление отв. D6 по торцу"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 5, ToolChanged 1, X 0, Y 0, Z 75, D 6, M -5, K 5, L 75, P 0, A 118, R 0, H 1.803, RC 0, PLANE XY(33), Dur 60, HID 5, NX 0, NY 0, NZ 1, NW 0, RevolverID AxisT
COMMENT    "@6мм Сверло"
PLANE      XY
SPINDL     ON(71), NO 398, K 0, MODE RPM(0)
CUTCOM     ON(71), LENGTH(9)5, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 175, Y 0, Z 730, C 0, C2 0, Jaw 82, B -90, Jaw2 12, S 0, X2 181.2, Y2 0, Z2 173, A 0, T 4, GEOM X 178, Y 0, Z -119.3, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:From submachine(Main spindle - Turret)=C;Z2;X2"
RAPID      N 10000
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
MULTIGOTO  COUNT 1, MACHINE, C -124.34, GEOM X 170.8, Y 0, Z 51.5, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.012
MULTIGOTO  COUNT 1, MACHINE, Z2 10, GEOM X 170.8, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.013
MULTIGOTO  COUNT 1, MACHINE, X2 24.464, GEOM X 24.464, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.015
INTERP     ON(71) POLAR(9021), P1 0
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
AXESBRAKE  COUNT 1, AxisCPos(3) ON(71)
COOLNT     ON(71), N 1, #1
FEDRAT     F 2000, MMPM(315), K 8192
GOTO       X -13.8, Y -20.2, Z 10
GOTO       X -13.8, Y -20.2, Z -10
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие1"
GOTO       X -13.8, Y -20.2, Z -19.4
FEDRAT     F 200, MMPM(315), K 0
GOTO       X -13.8, Y -20.2, Z -24.803
FEDRAT     F 2000, MMPM(315), K 8192
GOTO       X -13.8, Y -20.2, Z -10
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие1"
GOTO       X -13.8, Y -20.2, Z 10
GOTO       X 24.394, Y -1.851, Z 10
GOTO       X 24.394, Y -1.851, Z -10
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие2"
GOTO       X 24.394, Y -1.851, Z -19.4
FEDRAT     F 200, MMPM(315), K 0
GOTO       X 24.394, Y -1.851, Z -24.803
FEDRAT     F 2000, MMPM(315), K 8192
GOTO       X 24.394, Y -1.851, Z -10
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие2"
GOTO       X 24.394, Y -1.851, Z 10
GOTO       X -10.594, Y 22.051, Z 10
GOTO       X -10.594, Y 22.051, Z -10
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие3"
GOTO       X -10.594, Y 22.051, Z -19.4
FEDRAT     F 200, MMPM(315), K 0
GOTO       X -10.594, Y 22.051, Z -24.803
FEDRAT     F 2000, MMPM(315), K 8192
GOTO       X -10.594, Y 22.051, Z -10
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие3"
GOTO       X -10.594, Y 22.051, Z 10
INTERP     OFF(72) POLAR(9021), P1 0
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Turret)=X2;Z2"
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
PPFUN      ENDTECHINFO(59), 250, -100.41, -177.997, -119.3, 553, 216.506, 10, 100, 1.803, 1.803, 0, -39.895, -39.895, -91.5, 39.895, 39.895, 0, 3, 0, 0.05, 0.02, 0, 0, 8, 5, 6, 75, 1.03, 0, 5, 0, 0, 0, 2, 398, 10000, 200, 200, 200, 200, 200, 10000, 2011.701, 0.262, 0, 0, 0, 0.22, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, -77.079, -24.464, -119.3, 178, 177.997, 10, 100, 1.803, 1.803, 0, -39.895, -39.895, -91.5, 39.895, 39.895, 0, 3, 0, 0.05, 0.02, 0, 0, 8, 5, 6, 75, 1.03, 0, 5, 0, 0, 0, 2, 398, 10000, 200, 200, 200, 200, 200, 10000, 2078.841, 1.457, 0, 0, 0, 1.317, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 54
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Сверление отв. D6 по торцу 2"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
COMMENT    "@6мм Сверло"
PLANE      XY
SPINDL     ON(71), NO 398, K 0, MODE RPM(0)
CUTCOM     ON(71), LENGTH(9)5, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:From submachine(Main spindle - Turret)=C;Z2;X2"
RAPID      N 10000
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
MULTIGOTO  COUNT 1, MACHINE, C -124.34, GEOM X 24.464, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.024
MULTIGOTO  COUNT 1, MACHINE, Z2 10, GEOM X 24.464, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
MULTIGOTO  COUNT 1, MACHINE, X2 24.464, GEOM X 24.464, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
RAPID      N 10000
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
MULTIGOTO  COUNT 3, MACHINE, C -124.34, X2 24.464, Z2 10, GEOM X 24.464, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
AXESBRAKE  COUNT 1, AxisCPos(3) ON(71)
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие1"
PLANE      XY
AXESBRAKE  COUNT 1, AxisCPos(3) ON(71)
COOLNT     ON(71), N 1, #1
EXTCYCLE   ON(71)   W5DCHIPREMOVING(483), 0, 0, -1, 29.4, 30, 54.803, 1, 200, 1, 200, 1, 10000, 0, 0, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   CALL(52) W5DCHIPREMOVING(483), 0, 0, -1, 29.4, 30, 54.803, 1, 200, 1, 200, 1, 10000, 0, 0, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие1"
RAPID      N 10000
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
MULTIGOTO  COUNT 1, MACHINE, C -4.34, GEOM X 24.464, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.012
AXESBRAKE  COUNT 1, AxisCPos(3) ON(71)
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие2"
EXTCYCLE   CALL(52) W5DCHIPREMOVING(483), 0, 0, -1, 29.4, 30, 54.803, 1, 200, 1, 200, 1, 10000, 0, 0, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие2"
RAPID      N 10000
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
MULTIGOTO  COUNT 1, MACHINE, C 115.66, GEOM X 24.464, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.012
AXESBRAKE  COUNT 1, AxisCPos(3) ON(71)
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие3"
EXTCYCLE   CALL(52) W5DCHIPREMOVING(483), 0, 0, -1, 29.4, 30, 54.803, 1, 200, 1, 200, 1, 10000, 0, 0, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   OFF(72)  W5DCHIPREMOVING(483), 0, 0, -1, 29.4, 30, 54.803, 1, 200, 1, 200, 1, 10000, 0, 0, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие3"
RAPID      N 10000
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1
SPINDL     OFF(72), NO 0, K 0
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Turret)=X2;Z2"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, X2 181.2, GEOM X 24.464, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.015
GOHOME     COUNT 1, MACHINE, Z2 173, GEOM X 178, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.013
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
GOHOME     COUNT 3, MACHINE, X 535, Z 663, C 0, GEOM X 178, Y 0, Z -119.3, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.012
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
CUTCOM     OFF(72), LENGTH(9)0, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
PPFUN      ENDTECHINFO(59), 250, -77.079, -24.464, -119.3, 178, 177.997, 10, 100, 1.803, 1.803, 0, -39.895, -39.895, -91.5, 39.895, 39.895, 0, 3, 0, 0.05, 0.02, 0, 0, 8, 5, 6, 75, 1.03, 0, 5, 0, 0, 0, 2, 398, 10000, 200, 200, 200, 200, 200, 10000, 2078.841, 1.457, 0, 0, 0, 1.317, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, -100.41, -177.997, -119.3, 211.494, 177.996, 10, 100, 0, 0, 0, -39.895, -39.895, -91.5, 39.895, 39.895, 0, 3, 0, 0.05, 0.02, 0, 0, 17, 11, 5.108, 75, 2.059, 0, 11, 11, 0, 0, 2, 398, 10000, 200, 200, 200, 200, 200, 10000, 2671.042, 3.422, 0, 0, 0, 3.338, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 54
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Сверление отв. D6 по торцу 3"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 11, ToolChanged 1, X 0, Y 0, Z 75, D 5, M -11, K 11, L 75, P 0, A 118, R 0, H 0, RC 0, PLANE XY(33), Dur 60, HID 6, NX 0, NY 0, NZ 1, NW 0, RevolverID AxisT
COMMENT    "@5мм Метрическая резьбовая фреза"
PLANE      XY
SPINDL     ON(71), NO -398, K 0, MODE RPM(0)
CUTCOM     ON(71), LENGTH(9)11, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 181.2, Y2 0, Z2 173, A 0, T 5, GEOM X 178, Y 0, Z -119.3, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:From submachine(Main spindle - Turret)=C;Z2;X2"
RAPID      N 10000
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
MULTIGOTO  COUNT 1, MACHINE, C -124.34, GEOM X 178, Y 0, Z -119.3, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.012
MULTIGOTO  COUNT 1, MACHINE, Z2 10, GEOM X 178, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.013
MULTIGOTO  COUNT 1, MACHINE, X2 24.464, GEOM X 24.464, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.015
INTERP     ON(71) POLAR(9021), P1 0
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
COOLNT     ON(71), N 1, #1
FEDRAT     F 2000, MMPM(315), K 8192
GOTO       X -13.8, Y -20.2, Z 10
GOTO       X -13.8, Y -20.2, Z -10
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие1"
GOTO       X -13.8, Y -20.2, Z -19.5
PLANE      XY
CUTCOM     ON(71), R(23)11, X 0, Y 0, Z 0, N 0, K 0, M 0, RIGHT(24)
FEDRAT     F 200, MMPM(315), K 4
GOTO       X -12.954, Y -18.961, Z -19.5
FEDRAT     F 200, MMPM(315), K 0
CIRCLE     XC -13.8, YC -20.2, ZC -20.25, R -1.5, XE -12.954, YE -18.961, ZE -20.25
CIRCLE     XC -13.8, YC -20.2, ZC -21, R -1.5, XE -12.954, YE -18.961, ZE -21
CIRCLE     XC -13.8, YC -20.2, ZC -21.75, R -1.5, XE -12.954, YE -18.961, ZE -21.75
CIRCLE     XC -13.8, YC -20.2, ZC -22.5, R -1.5, XE -12.954, YE -18.961, ZE -22.5
CIRCLE     XC -13.8, YC -20.2, ZC -23.25, R -1.5, XE -12.954, YE -18.961, ZE -23.25
CIRCLE     XC -13.8, YC -20.2, ZC -24, R -1.5, XE -12.954, YE -18.961, ZE -24
CIRCLE     XC -13.8, YC -20.2, ZC -24.75, R -1.5, XE -12.954, YE -18.961, ZE -24.75
CIRCLE     XC -13.8, YC -20.2, ZC -25.5, R -1.5, XE -12.954, YE -18.961, ZE -25.5
CIRCLE     XC -13.8, YC -20.2, ZC -26.25, R -1.5, XE -12.954, YE -18.961, ZE -26.25
CIRCLE     XC -13.8, YC -20.2, ZC -27, R -1.5, XE -12.954, YE -18.961, ZE -27
CIRCLE     XC -13.8, YC -20.2, ZC -27.75, R -1.5, XE -12.954, YE -18.961, ZE -27.75
CIRCLE     XC -13.8, YC -20.2, ZC -28.5, R -1.5, XE -12.954, YE -18.961, ZE -28.5
CIRCLE     XC -13.8, YC -20.2, ZC -29.25, R -1.5, XE -12.954, YE -18.961, ZE -29.25
CIRCLE     XC -13.8, YC -20.2, ZC -30, R -1.5, XE -12.954, YE -18.961, ZE -30
CIRCLE     XC -13.8, YC -20.2, ZC -30.75, R -1.5, XE -12.954, YE -18.961, ZE -30.75
CIRCLE     XC -13.8, YC -20.2, ZC -31.5, R -1.5, XE -12.954, YE -18.961, ZE -31.5
CIRCLE     XC -13.8, YC -20.2, ZC -32.25, R -1.5, XE -12.954, YE -18.961, ZE -32.25
CIRCLE     XC -13.8, YC -20.2, ZC -33, R -1.5, XE -12.954, YE -18.961, ZE -33
CIRCLE     XC -13.8, YC -20.2, ZC -33.75, R -1.5, XE -12.954, YE -18.961, ZE -33.75
CIRCLE     XC -13.8, YC -20.2, ZC -34.5, R -1.5, XE -12.954, YE -18.961, ZE -34.5
CIRCLE     XC -13.8, YC -20.2, ZC -35, R -1.5, XE -15.296, YE -20.086, ZE -35
CUTCOM     OFF(72), R(23)11, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FEDRAT     F 200, MMPM(315), K 8
GOTO       X -13.8, Y -20.2, Z -35
FEDRAT     F 200, MMPM(315), K 64
GOTO       X -13.8, Y -20.2, Z -19.5
FEDRAT     F 2000, MMPM(315), K 8192
GOTO       X -13.8, Y -20.2, Z -10
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие1"
GOTO       X -13.8, Y -20.2, Z 10
GOTO       X 24.394, Y -1.851, Z 10
GOTO       X 24.394, Y -1.851, Z -10
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие2"
GOTO       X 24.394, Y -1.851, Z -19.5
CUTCOM     ON(71), R(23)11, X 0, Y 0, Z 0, N 0, K 0, M 0, RIGHT(24)
FEDRAT     F 200, MMPM(315), K 4
GOTO       X 22.898, Y -1.738, Z -19.5
FEDRAT     F 200, MMPM(315), K 0
CIRCLE     XC 24.394, YC -1.851, ZC -20.25, R -1.5, XE 22.898, YE -1.738, ZE -20.25
CIRCLE     XC 24.394, YC -1.851, ZC -21, R -1.5, XE 22.898, YE -1.738, ZE -21
CIRCLE     XC 24.394, YC -1.851, ZC -21.75, R -1.5, XE 22.898, YE -1.738, ZE -21.75
CIRCLE     XC 24.394, YC -1.851, ZC -22.5, R -1.5, XE 22.898, YE -1.738, ZE -22.5
CIRCLE     XC 24.394, YC -1.851, ZC -23.25, R -1.5, XE 22.898, YE -1.738, ZE -23.25
CIRCLE     XC 24.394, YC -1.851, ZC -24, R -1.5, XE 22.898, YE -1.738, ZE -24
CIRCLE     XC 24.394, YC -1.851, ZC -24.75, R -1.5, XE 22.898, YE -1.738, ZE -24.75
CIRCLE     XC 24.394, YC -1.851, ZC -25.5, R -1.5, XE 22.898, YE -1.738, ZE -25.5
CIRCLE     XC 24.394, YC -1.851, ZC -26.25, R -1.5, XE 22.898, YE -1.738, ZE -26.25
CIRCLE     XC 24.394, YC -1.851, ZC -27, R -1.5, XE 22.898, YE -1.738, ZE -27
CIRCLE     XC 24.394, YC -1.851, ZC -27.75, R -1.5, XE 22.898, YE -1.738, ZE -27.75
CIRCLE     XC 24.394, YC -1.851, ZC -28.5, R -1.5, XE 22.898, YE -1.738, ZE -28.5
CIRCLE     XC 24.394, YC -1.851, ZC -29.25, R -1.5, XE 22.898, YE -1.738, ZE -29.25
CIRCLE     XC 24.394, YC -1.851, ZC -30, R -1.5, XE 22.898, YE -1.738, ZE -30
CIRCLE     XC 24.394, YC -1.851, ZC -30.75, R -1.5, XE 22.898, YE -1.738, ZE -30.75
CIRCLE     XC 24.394, YC -1.851, ZC -31.5, R -1.5, XE 22.898, YE -1.738, ZE -31.5
CIRCLE     XC 24.394, YC -1.851, ZC -32.25, R -1.5, XE 22.898, YE -1.738, ZE -32.25
CIRCLE     XC 24.394, YC -1.851, ZC -33, R -1.5, XE 22.898, YE -1.738, ZE -33
CIRCLE     XC 24.394, YC -1.851, ZC -33.75, R -1.5, XE 22.898, YE -1.738, ZE -33.75
CIRCLE     XC 24.394, YC -1.851, ZC -34.5, R -1.5, XE 22.898, YE -1.738, ZE -34.5
CIRCLE     XC 24.394, YC -1.851, ZC -35, R -1.5, XE 25.043, YE -3.203, ZE -35
CUTCOM     OFF(72), R(23)11, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FEDRAT     F 200, MMPM(315), K 8
GOTO       X 24.394, Y -1.851, Z -35
FEDRAT     F 200, MMPM(315), K 64
GOTO       X 24.394, Y -1.851, Z -19.5
FEDRAT     F 2000, MMPM(315), K 8192
GOTO       X 24.394, Y -1.851, Z -10
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие2"
GOTO       X 24.394, Y -1.851, Z 10
GOTO       X -10.594, Y 22.051, Z 10
GOTO       X -10.594, Y 22.051, Z -10
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие3"
GOTO       X -10.594, Y 22.051, Z -19.5
CUTCOM     ON(71), R(23)11, X 0, Y 0, Z 0, N 0, K 0, M 0, RIGHT(24)
FEDRAT     F 200, MMPM(315), K 4
GOTO       X -9.944, Y 20.699, Z -19.5
FEDRAT     F 200, MMPM(315), K 0
CIRCLE     XC -10.594, YC 22.051, ZC -20.25, R -1.5, XE -9.944, YE 20.699, ZE -20.25
CIRCLE     XC -10.594, YC 22.051, ZC -21, R -1.5, XE -9.944, YE 20.699, ZE -21
CIRCLE     XC -10.594, YC 22.051, ZC -21.75, R -1.5, XE -9.944, YE 20.699, ZE -21.75
CIRCLE     XC -10.594, YC 22.051, ZC -22.5, R -1.5, XE -9.944, YE 20.699, ZE -22.5
CIRCLE     XC -10.594, YC 22.051, ZC -23.25, R -1.5, XE -9.944, YE 20.699, ZE -23.25
CIRCLE     XC -10.594, YC 22.051, ZC -24, R -1.5, XE -9.944, YE 20.699, ZE -24
CIRCLE     XC -10.594, YC 22.051, ZC -24.75, R -1.5, XE -9.944, YE 20.699, ZE -24.75
CIRCLE     XC -10.594, YC 22.051, ZC -25.5, R -1.5, XE -9.944, YE 20.699, ZE -25.5
CIRCLE     XC -10.594, YC 22.051, ZC -26.25, R -1.5, XE -9.944, YE 20.699, ZE -26.25
CIRCLE     XC -10.594, YC 22.051, ZC -27, R -1.5, XE -9.944, YE 20.699, ZE -27
CIRCLE     XC -10.594, YC 22.051, ZC -27.75, R -1.5, XE -9.944, YE 20.699, ZE -27.75
CIRCLE     XC -10.594, YC 22.051, ZC -28.5, R -1.5, XE -9.944, YE 20.699, ZE -28.5
CIRCLE     XC -10.594, YC 22.051, ZC -29.25, R -1.5, XE -9.944, YE 20.699, ZE -29.25
CIRCLE     XC -10.594, YC 22.051, ZC -30, R -1.5, XE -9.944, YE 20.699, ZE -30
CIRCLE     XC -10.594, YC 22.051, ZC -30.75, R -1.5, XE -9.944, YE 20.699, ZE -30.75
CIRCLE     XC -10.594, YC 22.051, ZC -31.5, R -1.5, XE -9.944, YE 20.699, ZE -31.5
CIRCLE     XC -10.594, YC 22.051, ZC -32.25, R -1.5, XE -9.944, YE 20.699, ZE -32.25
CIRCLE     XC -10.594, YC 22.051, ZC -33, R -1.5, XE -9.944, YE 20.699, ZE -33
CIRCLE     XC -10.594, YC 22.051, ZC -33.75, R -1.5, XE -9.944, YE 20.699, ZE -33.75
CIRCLE     XC -10.594, YC 22.051, ZC -34.5, R -1.5, XE -9.944, YE 20.699, ZE -34.5
CIRCLE     XC -10.594, YC 22.051, ZC -35, R -1.5, XE -9.748, YE 23.29, ZE -35
CUTCOM     OFF(72), R(23)11, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FEDRAT     F 200, MMPM(315), K 8
GOTO       X -10.594, Y 22.051, Z -35
FEDRAT     F 200, MMPM(315), K 64
GOTO       X -10.594, Y 22.051, Z -19.5
FEDRAT     F 2000, MMPM(315), K 8192
GOTO       X -10.594, Y 22.051, Z -10
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие3"
GOTO       X -10.594, Y 22.051, Z 10
INTERP     OFF(72) POLAR(9021), P1 0
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1
SPINDL     OFF(72), NO 0, K 0
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Turret)=X2;Z2"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, X2 181.2, GEOM X 24.464, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.015
GOHOME     COUNT 1, MACHINE, Z2 173, GEOM X 178, Y 0, Z 10, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.013
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
GOHOME     COUNT 3, MACHINE, X 535, Z 663, C 0, GEOM X 178, Y 0, Z -119.3, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.012
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
CUTCOM     OFF(72), LENGTH(9)0, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
WAIT       ID(SyncPoint4), Index(3)
PPFUN      ENDTECHINFO(59), 250, -100.41, -177.997, -119.3, 211.494, 177.996, 10, 100, 0, 0, 0, -39.895, -39.895, -91.5, 39.895, 39.895, 0, 3, 0, 0.05, 0.02, 0, 0, 17, 11, 5.108, 75, 2.059, 0, 11, 11, 0, 0, 2, 398, 10000, 200, 200, 200, 200, 200, 10000, 2671.042, 3.422, 0, 0, 0, 3.338, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, -110, 0, -27.5, 110, 110, 465.675, 100, 2.674, 2.674, 0, -39.895, -39.895, -91.5, 39.895, 39.895, 0, 3, 0, 0.05, 0.02, 0, 0, 8, 10, 8.9, 115, 1.03, 0, 10, 0, 0, 0, 2, 354, 10000, 200, 200, 200, 200, 200, 10000, 2203.927, 0.285, 0, 0, 0, 0.109, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 54
WAIT       ID(SyncPoint4), Index(3)
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Сверление отв. D9 на поверхности"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 10, ToolChanged 1, X 0, Y 0, Z 215, D 8.9, M -10, K 10, L 115, P 0, A 118, R 0, H 2.674, RC 0, PLANE YZ(37), Dur 60, HID 0, NX 0, NY 0, NZ 1, NW 0, RevolverID Tool110
COMMENT    "@8.9мм Сверло"
PLANE      YZ
SPINDL     ON(71), NO 354, K 0, MODE RPM(0)
CUTCOM     ON(71), LENGTH(9)10, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 174, Y2 0, Z2 343.8, A 0, T 5, GEOM X 110, Y 0, Z 465.675, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:Avoid collisions"
RAPID      N 10000
MULTIGOTO  COUNT 2, MACHINE, X2 176.8, Z2 146.2, GEOM X 110, Y 0, Z 465.675, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.02
MULTIGOTO  COUNT 2, MACHINE, X 49.9, Z 19.999, GEOM X 49.9, Y 0, Z 19.999, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.045
MULTIGOTO  COUNT 1, MACHINE, Z -27.5, GEOM X 49.9, Y 0, Z -27.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.005
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
RAPID      N 10000
MULTIGOTO  COUNT 1, MACHINE, S 0, GEOM X 49.9, Y 0, Z -27.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0
GOTO       X 49.9, Y 0, Z -27.5
GOTO       X 49.895, Y 0, Z -27.5
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие1"
PLANE      YZ
AXESBRAKE  COUNT 1, AxisCPos(3) ON(71)
COOLNT     ON(71), N 1, #1
EXTCYCLE   ON(71)   W5DDRILL(481), -1, 0, 0, 14.109, 14.999, 24.995, 1, 200, 1, 200, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   CALL(52) W5DDRILL(481), -1, 0, 0, 14.109, 14.999, 24.995, 1, 200, 1, 200, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   OFF(72)  W5DDRILL(481), -1, 0, 0, 14.109, 14.999, 24.995, 1, 200, 1, 200, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие1"
RAPID      N 10000
GOTO       X 49.9, Y 0, Z -27.5
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
MULTIGOTO  COUNT 1, MACHINE, C 170, GEOM X 49.9, Y 0, Z -27.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.017
MULTIGOTO  COUNT 2, MACHINE, X 49.895, C 180, GEOM X 49.895, Y 0, Z -27.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.001
AXESBRAKE  COUNT 1, AxisCPos(3) ON(71)
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие2"
EXTCYCLE   ON(71)   W5DDRILL(481), -1, 0, 0, 14.109, 14.999, 24.995, 1, 200, 1, 200, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   CALL(52) W5DDRILL(481), -1, 0, 0, 14.109, 14.999, 24.995, 1, 200, 1, 200, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
EXTCYCLE   OFF(72)  W5DDRILL(481), -1, 0, 0, 14.109, 14.999, 24.995, 1, 200, 1, 200, 1, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие2"
RAPID      N 10000
GOTO       X 49.9, Y 0, Z -27.5
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1
SPINDL     OFF(72), NO 0, K 0
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Mill head)=X;Z"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, X 535, GEOM X 49.9, Y 0, Z -27.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.006
GOHOME     COUNT 1, MACHINE, Z 663, GEOM X 110, Y 0, Z -27.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.049
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
GOHOME     COUNT 3, MACHINE, C 0, X2 181.2, Z2 173, GEOM X 110, Y 0, Z 465.675, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.018
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
CUTCOM     OFF(72), LENGTH(9)0, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
PPFUN      ENDTECHINFO(59), 250, -110, 0, -27.5, 110, 110, 465.675, 100, 2.674, 2.674, 0, -39.895, -39.895, -91.5, 39.895, 39.895, 0, 3, 0, 0.05, 0.02, 0, 0, 8, 10, 8.9, 115, 1.03, 0, 10, 0, 0, 0, 2, 354, 10000, 200, 200, 200, 200, 200, 10000, 2203.927, 0.285, 0, 0, 0, 0.109, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, -150, -2, -29.5, 150, 150, 465.675, 100, 0, 0, 0, -39.895, -39.895, -91.5, 39.895, 39.895, 0, 3, 0, 0.05, 0.02, 0, 0, 0, 7, 5, 75, 0, 0, 7, 7, 0, 0, 2, 354, 10000, 200, 200, 200, 200, 200, 10000, 2557.158, 1.031, 0, 0, 0, 0.875, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 54
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Разфрезеровка отверстий D9 на поверхности"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 7, ToolChanged 1, X 0, Y 0, Z 175, D 5, M -7, K 7, L 75, P 0, A 0, R 0, H 0, RC 0, PLANE YZ(37), Dur 60, HID 0, NX 0, NY 0, NZ 1, NW 0, RevolverID Tool110
COMMENT    "@5мм Цилиндрическая фреза"
PLANE      YZ
SPINDL     ON(71), NO 354, K 0, MODE RPM(0)
CUTCOM     ON(71), LENGTH(9)7, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 181.2, Y2 0, Z2 173, A 0, T 5, GEOM X 150, Y 0, Z 465.675, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:Avoid collisions"
RAPID      N 10000
MULTIGOTO  COUNT 2, MACHINE, X 49.9, Z 19.999, GEOM X 49.9, Y 0, Z 19.999, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.045
MULTIGOTO  COUNT 1, MACHINE, Z -27.5, GEOM X 49.9, Y 0, Z -27.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.005
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
RAPID      N 10000
MULTIGOTO  COUNT 1, MACHINE, S 0, GEOM X 49.9, Y 0, Z -27.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0
GOTO       X 49.9, Y 0, Z -27.5
GOTO       X 44.9, Y 0, Z -27.5
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие1"
GOTO       X 35.4, Y 0, Z -27.5
PLANE      YZ
CUTCOM     ON(71), R(23)7, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
AXESBRAKE  COUNT 1, AxisCPos(3) ON(71)
COOLNT     ON(71), N 1, #1
FEDRAT     F 200, MMPM(315), K 4
GOTO       X 35.4, Y 2, Z -27.5
FEDRAT     F 200, MMPM(315), K 0
CIRCLE     XC 33.184, YC 0, ZC -27.5, R 2, XE 33.184, YE 2, ZE -27.5
CIRCLE     XC 30.968, YC 0, ZC -27.5, R 2, XE 30.968, YE 2, ZE -27.5
CIRCLE     XC 28.753, YC 0, ZC -27.5, R 2, XE 28.753, YE 2, ZE -27.5
CIRCLE     XC 26.537, YC 0, ZC -27.5, R 2, XE 26.537, YE 2, ZE -27.5
CIRCLE     XC 24.9, YC 0, ZC -27.5, R 2, XE 24.9, YE -0.142, ZE -29.495
CIRCLE     XC 24.9, YC 0, ZC -27.5, R 2, XE 24.9, YE -0.142, ZE -29.495
CUTCOM     OFF(72), R(23)7, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FEDRAT     F 200, MMPM(315), K 8
GOTO       X 24.9, Y 0, Z -27.5
FEDRAT     F 200, MMPM(315), K 64
GOTO       X 35.4, Y 0, Z -27.5
RAPID      N 10000
GOTO       X 44.9, Y 0, Z -27.5
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие1"
GOTO       X 49.9, Y 0, Z -27.5
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
MULTIGOTO  COUNT 1, MACHINE, C 180, GEOM X 49.9, Y 0, Z -27.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.018
GOTO       X 44.9, Y 0, Z -27.5
AXESBRAKE  COUNT 1, AxisCPos(3) ON(71)
STRUCTURE  ON(71), TYPE "Block", Comment "Отверстие2"
GOTO       X 35.4, Y 0, Z -27.5
CUTCOM     ON(71), R(23)7, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FEDRAT     F 200, MMPM(315), K 4
GOTO       X 35.4, Y 2, Z -27.5
FEDRAT     F 200, MMPM(315), K 0
CIRCLE     XC 33.184, YC 0, ZC -27.5, R 2, XE 33.184, YE 2, ZE -27.5
CIRCLE     XC 30.968, YC 0, ZC -27.5, R 2, XE 30.968, YE 2, ZE -27.5
CIRCLE     XC 28.753, YC 0, ZC -27.5, R 2, XE 28.753, YE 2, ZE -27.5
CIRCLE     XC 26.537, YC 0, ZC -27.5, R 2, XE 26.537, YE 2, ZE -27.5
CIRCLE     XC 24.9, YC 0, ZC -27.5, R 2, XE 24.9, YE -0.142, ZE -29.495
CIRCLE     XC 24.9, YC 0, ZC -27.5, R 2, XE 24.9, YE -0.142, ZE -29.495
CUTCOM     OFF(72), R(23)7, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FEDRAT     F 200, MMPM(315), K 8
GOTO       X 24.9, Y 0, Z -27.5
FEDRAT     F 200, MMPM(315), K 64
GOTO       X 35.4, Y 0, Z -27.5
RAPID      N 10000
GOTO       X 44.9, Y 0, Z -27.5
STRUCTURE  OFF(72), TYPE "Block", Comment "Отверстие2"
GOTO       X 49.9, Y 0, Z -27.5
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1
SPINDL     OFF(72), NO 0, K 0
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Mill head)=X;Z"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, X 535, GEOM X 49.9, Y 0, Z -27.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.01
GOHOME     COUNT 1, MACHINE, Z 663, GEOM X 150, Y 0, Z -27.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.049
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
GOHOME     COUNT 3, MACHINE, C 0, X2 181.2, Z2 173, GEOM X 150, Y 0, Z 465.675, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.018
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
CUTCOM     OFF(72), LENGTH(9)0, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
WAIT       ID(SyncPoint5), Index(4)
PPFUN      ENDTECHINFO(59), 250, -150, -2, -29.5, 150, 150, 465.675, 100, 0, 0, 0, -39.895, -39.895, -91.5, 39.895, 39.895, 0, 3, 0, 0.05, 0.02, 0, 0, 0, 7, 5, 75, 0, 0, 7, 7, 0, 0, 2, 354, 10000, 200, 200, 200, 200, 200, 10000, 2557.158, 1.031, 0, 0, 0, 0.875, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, 14.188, 0, -38.3, 679.321, 145.1, 0.539, 0, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0, 0, 0, 102, 11, 0, 0, 0, 0.2, 11, 11, 0, 0, 11, 150, 10000, 0.5, 0, 100, 100, 1000, 1000, 2277.927, 0.223, 0, 0, 0, 0.139, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 1, 8, 54
WAIT       ID(SyncPoint5), Index(4)
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Резьба снаружи"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 11, ToolChanged 1, X 14, Y 125.2, Z 0, D 0, M 11, K 11, L 0, P 0, A 0, R 0, H 0, RC 0, PLANE XY(33), Dur 0, HID 11, NX 0, NY 0, NZ 1, NW 0, RevolverID AxisT
COMMENT    "@IC16 Re0.2 R Резьбонарезной tool"
CUTCOM     ON(71), LENGTH(9)11, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 181.2, Y2 0, Z2 173, A 0, T 10, GEOM X 137.8, Y 0, Z -38.3, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:Short"
SELWORKPIECE"LeftWorkpieceHolder"
SPINDL     ON(71), NO -1000, K 0, MODE CSS(2), SPEED -150
RAPID      N 10000
GOTO       X 15, Y 0, Z 0.5
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
GOTO       X 15, Y 0, Z 0.5
PPRINT     "#KeyPoint: StartCutting"
COOLNT     ON(71), N 1, #1
EXTCYCLE   ON(71)   LATHETHREAD(403), 1, 0, 0, 0.5, 14.188, -16.9, 14.188, 0.5, 14.188, -16.9, 14.188, 0, 0, 15, 14.188, 0.812, 60, 30, 1, 0, 1.5, 2, 0, 1, 0.254, 10, 0.01, 2, 0.05, 0, 0, 2, 30, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
EXTCYCLE   CALL(52) LATHETHREAD(403), 1, 0, 0, 0.5, 14.188, -16.9, 14.188, 0.5, 14.188, -16.9, 14.188, 0, 0, 15, 14.188, 0.812, 60, 30, 1, 0, 1.5, 2, 0, 1, 0.254, 10, 0.01, 2, 0.05, 0, 0, 2, 30, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
EXTCYCLE   OFF(72)  LATHETHREAD(403), 1, 0, 0, 0.5, 14.188, -16.9, 14.188, 0.5, 14.188, -16.9, 14.188, 0, 0, 15, 14.188, 0.812, 60, 30, 1, 0, 1.5, 2, 0, 1, 0.254, 10, 0.01, 2, 0.05, 0, 0, 2, 30, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
COOLNT     OFF(72), N 1, #1
SPINDL     OFF(72), NO 0, K 0
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:From submachine(Main spindle - Turret)=X2;Z2"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, X2 181.2, GEOM X 15, Y 0, Z 0.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.012
GOHOME     COUNT 1, MACHINE, Z2 173, GEOM X 137.8, Y 0, Z 0.5, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.004
AXESBRAKE  COUNT 1, AxisCPos(3) OFF(72)
GOHOME     COUNT 3, MACHINE, X 535, Z 663, C 0, GEOM X 137.8, Y 0, Z -38.3, NX 1, NY 0, NZ 0, NW 0, MSF 0, Time 0.027
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
WAIT       ID(SyncPoint10), Index(5)
PPFUN      ENDTECHINFO(59), 250, 14.188, 0, -38.3, 679.321, 145.1, 0.539, 0, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0, 0, 0, 102, 11, 0, 0, 0, 0.2, 11, 11, 0, 0, 11, 150, 10000, 0.5, 0, 100, 100, 1000, 1000, 2277.927, 0.223, 0, 0, 0, 0.139, 0, 2, 0, 0, 0, 0, 0, 0, 1, 0, 2, 1, 0, 1, 8, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 1, 0, 54
WAIT       ID(SyncPoint10), Index(5)
WAIT       ID(SyncPoint6), Index(-1)
COMMENT    "Остановка программы"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
STOP       
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
WAIT       ID(SyncPoint7), Index(6)
PPFUN      ENDTECHINFO(59), 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 1, 0, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  ON(71), TYPE "HeaderSection", Comment "$Header$"
PPFUN      TECHINFO(58), 250, 0, 0, 111.2, 0, 0, 1114.5, 100, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0.02, 0, 0, 26, 2, 11.6, 0, 0, 0, 2, 0, 0, 0, 2, 200, 10000, 200, 200, 200, 200, 200, 200, 2067.6, 0.306, 0, 0, 0, 0.102, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 1, 0, 54
WAIT       ID(SyncPoint7), Index(6)
STRUCTURE  ON(71), TYPE "String", Comment "Начало"
COMMENT    "Токарный перехват 1"
ORIGIN     X 0, Y 0, Z 90, PPFUN 0, N 54, A 0, B 0, C 0
LOADTL     N 2, ToolChanged 1, X 0, Y 0, Z 0, D 11.6, M -2, K 2, L 0, P 0, A 0, R 0, H 0, RC 0, PLANE XY(33), Dur 60, HID 21, NX 0, NY 0, NZ 1, NW 0, RevolverID RightWorkpieceHolder
COMMENT    "@Пустой захват"
PLANE      XY
SPINDL     ON(71), NO -200, K 0, MODE RPM(0)
CUTCOM     ON(71), LENGTH(9)2, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
FROM       COUNT 14, MACHINE, X 535, Y 0, Z 663, C 0, C2 0, Jaw 82, B 0, Jaw2 12, S 0, X2 181.2, Y2 0, Z2 173, A 0, T 10, GEOM X 0, Y 0, Z 1114.5, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "String", Comment "Начало"
STRUCTURE  ON(71), TYPE "String", Comment "Подвод"
STRUCTURE  ON(71), TYPE "Approach", Comment "Подвод"
PPRINT     "#Approach:Custom=Jaw2(50)"
CLAMP      ID 2, OFF(72), DIR(1)
RAPID      N 10000
TAKEOVER   ""
STRUCTURE  OFF(72), TYPE "Approach", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Подвод"
STRUCTURE  OFF(72), TYPE "HeaderSection", Comment "$Header$"
STRUCTURE  ON(71), TYPE "BodySection", Comment "$Body$"
MULTIGOTO  COUNT 1, MACHINE, A 121.2, GEOM X 0, Y 0, Z 121.2, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.099
SYNCAXES   ON(71), AxisC2Pos, AxisCPos
FEDRAT     F 200, MMPM(315), K 4
MULTIGOTO  COUNT 1, MACHINE, A 111.2, GEOM X 0, Y 0, Z 111.2, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.05
CLAMP      ID 2, ON(71), DIR(-1)
CLAMP      ID 1, OFF(72), DIR(1)
TAKEOVER   "RightWorkpieceHolder"
FEDRAT     F 200, MMPM(315), K 8
MULTIGOTO  COUNT 1, MACHINE, A 121.2, GEOM X 0, Y 0, Z 131.2, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.05
SYNCAXES   OFF(72), AxisC2Pos, AxisCPos
STRUCTURE  OFF(72), TYPE "BodySection", Comment "$Body$"
STRUCTURE  ON(71), TYPE "TailSection", Comment "$Tail$"
SPINDL     OFF(72), NO 0, K 0
STRUCTURE  ON(71), TYPE "String", Comment "Отвод"
STRUCTURE  ON(71), TYPE "Return", Comment "Отвод"
PPRINT     "#Return:Custom=G53 A"
RAPID      N 10000
GOHOME     COUNT 1, MACHINE, A 0, GEOM X 0, Y 0, Z 131.2, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0.099
GOHOME     COUNT 1, MACHINE, X2 181.2, GEOM X 0, Y 0, Z 2117.8, NX 0, NY 0, NZ 1, NW 0, MSF 0, Time 0
STRUCTURE  OFF(72), TYPE "Return", Comment "Отвод"
STRUCTURE  OFF(72), TYPE "String", Comment "Отвод"
CUTCOM     OFF(72), LENGTH(9)0, X 0, Y 0, Z 0, N 0, K 0, M 0, LEFT(8)
WAIT       ID(SyncPoint8), Index(-1)
PPFUN      ENDTECHINFO(59), 250, 0, 0, 111.2, 0, 0, 1114.5, 100, 0, 0, 0, -39.9, -39.9, -91.5, 39.9, 39.9, 0, 3, 0, 0.05, 0.02, 0, 0, 26, 2, 11.6, 0, 0, 0, 2, 0, 0, 0, 2, 200, 10000, 200, 200, 200, 200, 200, 200, 2067.6, 0.306, 0, 0, 0, 0.102, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 1, 0, 54

STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
STRUCTURE  OFF(72), TYPE "TailSection", Comment "$Tail$"
End of file: Lathe_part (противошпиндель)
