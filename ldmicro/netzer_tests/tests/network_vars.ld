LDmicro0.1
MICRO=Netzer Byte Code
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=C:\PROJECTS\Netzer\Release_1_5\IO\ldmicro\network_vars.int

IO LIST
    Xpi@90 at 0
    Xpi@91 at 0
    Xpi@92 at 0
    Xpi@93 at 0
    Xpi@94 at 0
    Xpi@95 at 0
    Xpi@96 at 0
    Xpi@97 at 0
    Xpo9d at 0
    Xpo@98 at 0
    Xpo@99 at 0
    Xpo@9a at 0
    Xpo@9b at 0
    Xpo@9c at 0
    Xpo@9e at 0
    Xpo@9f at 0
END

PROGRAM
RUNG
    CONTACTS Xpi@90 0
    CONTACTS Xpo@98 1
    MOVE val@10 val@10
END
RUNG
    CONTACTS Xpi@91 0
    CONTACTS Xpo@99 1
    MOVE val@11 val@11
END
RUNG
    CONTACTS Xpi@92 0
    CONTACTS Xpo@9a 1
    MOVE val@12 val@12
END
RUNG
    CONTACTS Xpi@93 0
    CONTACTS Xpo@9b 1
    MOVE val@13 val@13
END
RUNG
    CONTACTS Xpi@94 0
    CONTACTS Xpo@9c 1
    MOVE val@14 val@14
END
RUNG
    CONTACTS Xpi@95 0
    CONTACTS Xpo9d 1
    MOVE val@15 val@15
END
RUNG
    CONTACTS Xpi@96 0
    CONTACTS Xpo@9e 1
    MOVE val@16 val@16
END
RUNG
    CONTACTS Xpi@97 0
    CONTACTS Xpo@9f 1
    MOVE val@17 val@17
END
