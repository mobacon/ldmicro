LDmicro0.1
MICRO=Netzer Byte Code
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=C:\PROJECTS\Netzer\Release_1_5\IO\ldmicro\blink.int

IO LIST
    Xbutton@82 at 0
    Yled@01 at 0
END

PROGRAM
RUNG
    CONTACTS Xbutton@82 1
    CTC Cwhich 4
END
RUNG
    CONTACTS Xbutton@82 1
    OSF
    TOF Tdblclk 500000
    COIL Rdblclk 0 0 0
END
RUNG
    CONTACTS Xbutton@82 1
    CONTACTS Rdblclk 0
    MOVE Cwhich 3
END
RUNG
    CONTACTS Rfast 0
    TOF Tffast 50000
    TON Tnfast 50000
    COIL Rfast 1 0 0
END
RUNG
    CONTACTS Rslow 0
    TON Tnslow 500000
    TOF Tfslow 50000
    COIL Rslow 1 0 0
END
RUNG
    PARALLEL
        SERIES
            EQU Cwhich 0
            CONTACTS Rfast 0
        END
        SERIES
            EQU Cwhich 1
            CONTACTS Rslow 0
        END
        SERIES
            EQU Cwhich 2
            CONTACTS Rslow 1
        END
        EQU Cwhich 3
        SERIES
            EQU Cwhich 4
            OPEN
        END
    END
    COIL Yled@01 0 0 0
END
