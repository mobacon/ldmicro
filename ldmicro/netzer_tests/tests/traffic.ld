LDmicro0.1
MICRO=Netzer Byte Code
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=C:\PROJECTS\Netzer\Release_1_5\IO\ldmicro\traffic.int

IO LIST
    Xbutton1@80 at 0
    Xbutton2@81 at 0
    Ygreen@04 at 0
    Yred@02 at 0
    Ywait@05 at 0
    Yyellow@03 at 0
END

PROGRAM
RUNG
    CONTACTS Rclock 1
    TOF Ton 500000
    TON Toff 500000
    COIL Rclock 0 0 0
END
RUNG
    CONTACTS Rclock 0
    CTC Ccycle 19
END
RUNG
    GEQ Ccycle 0
    LES Ccycle 8
    COIL Yred@02 0 0 0
END
RUNG
    GEQ Ccycle 8
    LES Ccycle 12
    COIL Yyellow@03 0 0 0
END
RUNG
    GEQ Ccycle 12
    LES Ccycle 20
    PARALLEL
        COIL Ygreen@04 0 0 0
        COIL Rwait 0 0 1
    END
END
RUNG
    PARALLEL
        CONTACTS Xbutton1@80 1
        CONTACTS Xbutton2@81 1
    END
    PARALLEL
        SERIES
            GEQ Ccycle 0
            LES Ccycle 6
            MOVE Ccycle 6
        END
        COIL Rwait 0 1 0
    END
END
RUNG
    CONTACTS Rwait 0
    PARALLEL
        SERIES
            GEQ Ccycle 8
            LES Ccycle 12
            CONTACTS Rclock 0
        END
        SERIES
            GEQ Ccycle 0
            LES Ccycle 8
        END
    END
    COIL Ywait@05 0 0 0
END
