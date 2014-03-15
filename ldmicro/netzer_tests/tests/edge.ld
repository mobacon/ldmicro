LDmicro0.1
MICRO=Netzer Byte Code
CYCLE=1000000
CRYSTAL=4000000
BAUD=2400
COMPILED=C:\PROJECTS\Netzer\Release_1_5\IO\ldmicro\edge.int

IO LIST
    Xpi@90 at 0
    Xpo@98 at 0
    Xpo@99 at 0
    Xpo@9a at 0
END

PROGRAM
RUNG
    ADD counter counter 1
END
RUNG
    GRT counter maxcount
    COIL Rsend 0 0 0
END
RUNG
    CONTACTS Rsend 0
    MOVE counter 0
END
RUNG
    CONTACTS Rsend 0
    CONTACTS Xpo@98 1
    MOVE val@10 edge@8C
END
RUNG
    CONTACTS Rsend 0
    CONTACTS Xpo@99 1
    MOVE val@11 edge@8D
END
RUNG
    CONTACTS Rsend 0
    CONTACTS Xpo@9a 1
    MOVE val@12 edge@8E
END
RUNG
    CONTACTS Xpi@90 0
    MOVE maxcount val@10
END
