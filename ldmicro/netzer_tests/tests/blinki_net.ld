LDmicro0.1
MICRO=Netzer Byte Code
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=C:\PROJECTS\Netzer\Release_1_5\IO\ldmicro\blinki_net.int

IO LIST
    Xinput@80 at 0
    Xinput@81 at 0
END

PROGRAM
RUNG
    CONTACTS Xinput@80 1
    MOVE ctrl@08 04
END
RUNG
    CONTACTS Xinput@81 1
    MOVE ctrl@08 05
END
