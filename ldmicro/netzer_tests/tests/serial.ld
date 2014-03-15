LDmicro0.1
MICRO=Netzer Byte Code
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=C:\PROJECTS\Netzer\Release_1_5\IO\ldmicro\serial.int

IO LIST
    Xrx@8E at 0
    Yled@01 at 0
END

PROGRAM
RUNG
    CONTACTS Rosc 1
    TOF Tct1 250000
    TON Tct2 250000
    COIL Rosc 0 0 0
END
RUNG
    CONTACTS Rfast 1
    TOF Tct3 100000
    TON Tct4 100000
    COIL Rfast 0 0 0
END
RUNG
    CONTACTS Rosc 0
    CTC Cwhich 4
END
RUNG
    PARALLEL
        SERIES
            EQU Cwhich 0
            MOVE ch 'A'
        END
        SERIES
            EQU Cwhich 1
            MOVE ch 'b'
        END
        SERIES
            EQU Cwhich 2
            MOVE ch 'c'
        END
        SERIES
            EQU Cwhich 3
            MOVE ch 13
        END
        SERIES
            EQU Cwhich 4
            MOVE ch 10
        END
    END
END
RUNG
    CONTACTS Rosc 0
    OSF
    MOVE tx@06 ch
END
RUNG
    CONTACTS Xrx@8E 0
    PARALLEL
        COIL Rjustgot 0 1 0
        MOVE inch rx@06
    END
END
RUNG
    CONTACTS Rjustgot 0
    TON Tnew 1000000
    COIL Rjustgot 0 0 1
END
RUNG
    PARALLEL
        SERIES
            CONTACTS Rjustgot 0
            CONTACTS Rfast 0
        END
        SERIES
            CONTACTS Rjustgot 1
            PARALLEL
                SERIES
                    EQU inch 'o'
                    SHORT
                END
                SERIES
                    EQU inch 'b'
                    CONTACTS Rosc 0
                END
                SERIES
                    SHORT
                    OPEN
                END
            END
        END
    END
    COIL Yled@01 0 0 0
END
