LDmicro0.1
MICRO=Netzer Byte Code
CYCLE=1000000
CRYSTAL=4000000
BAUD=2400
COMPILED=C:\PROJECTS\Netzer\Release_1_5\IO\ldmicro\edge2.int

IO LIST
    Xpo@98 at 0
    Xpo@99 at 0
    Xpo@9a at 0
END

PROGRAM
RUNG
    PARALLEL
        CONTACTS RzeroSend1 1
        NEQ edge1@01 0
    END
    PARALLEL
        COIL Rsend1 0 0 0
        COIL RzeroSend1 0 0 1
    END
END
RUNG
    CONTACTS Rsend1 0
    CONTACTS Xpo@98 1
    PARALLEL
        SERIES
            EQU edge1@01 0
            COIL RzeroSend1 0 1 0
        END
        MOVE val@10 edge@8C
    END
END
RUNG
    PARALLEL
        CONTACTS RzeroSend2 1
        NEQ edge2@02 0
    END
    PARALLEL
        COIL Rsend2 0 0 0
        COIL RzeroSend2 0 0 1
    END
END
RUNG
    CONTACTS Rsend2 0
    CONTACTS Xpo@99 1
    PARALLEL
        SERIES
            EQU edge2@02 0
            COIL RzeroSend2 0 1 0
        END
        MOVE val@11 edge@8D
    END
END
RUNG
    PARALLEL
        CONTACTS RzeroSend3 1
        NEQ edge3@03 0
    END
    PARALLEL
        COIL Rsend3 0 0 0
        COIL RzeroSend3 0 0 1
    END
END
RUNG
    CONTACTS Rsend3 0
    CONTACTS Xpo@9a 1
    PARALLEL
        SERIES
            EQU edge3@03 0
            COIL RzeroSend3 0 1 0
        END
        MOVE val@12 edge@8E
    END
END
