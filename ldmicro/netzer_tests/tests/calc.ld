LDmicro0.1
MICRO=Netzer Byte Code
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=C:\PROJECTS\Netzer\Release_1_5\IO\ldmicro\calc.int

IO LIST
    Xbutton@80 at 0
    Xpi@98 at 0
    Xpi@99 at 0
    Xpi@9A at 0
    Xpi@9B at 0
    Xpi@9C at 0
    Xpi@9D at 0
    Xpi@9E at 0
END

PROGRAM
RUNG
    CONTACTS Xbutton@80 1
    MOVE adc1 adc@82
END
RUNG
    CONTACTS Xbutton@80 1
    MOVE adc2 adc@83
END
RUNG
    CONTACTS Xbutton@80 1
    CONTACTS Xpi@98 1
    MOVE add@10 adc1
END
RUNG
    CONTACTS Xbutton@80 1
    CONTACTS Xpi@99 1
    MOVE add@11 adc2
END
RUNG
    CONTACTS Xbutton@80 1
    CONTACTS Xpi@9A 1
    ADD add@12 adc1 adc2
END
RUNG
    CONTACTS Xbutton@80 1
    CONTACTS Xpi@9B 1
    SUB sub@13 adc1 adc2
END
RUNG
    CONTACTS Xbutton@80 1
    CONTACTS Xpi@9C 1
    MUL mul@14 adc1 adc2
END
RUNG
    CONTACTS Xbutton@80 1
    CONTACTS Xpi@9D 1
    DIV div@15 adc1 adc2
END
RUNG
    CONTACTS Xbutton@80 1
    CONTACTS Xpi@9E 1
    MOVE mod@16 scr@80
END
