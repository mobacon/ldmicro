LDmicro0.1
MICRO=Netzer Byte Code
CYCLE=100000
CRYSTAL=4000000
BAUD=2400
COMPILED=C:\PROJECTS\Netzer\Release_1_5\IO\ldmicro\states.int

IO LIST
END

PROGRAM
RUNG
    EQU state@08 0
    COIL Rstarting@00 0 0 0
END
RUNG
    EQU state@08 1
    COIL Rno_link@01 0 0 0
END
RUNG
    EQU state@08 2
    COIL Rip_error@02 0 0 0
END
RUNG
    EQU state@08 3
    COIL Rready@03 0 0 0
END
RUNG
    EQU state@08 4
    COIL Rshutdown@04 0 0 0
END
