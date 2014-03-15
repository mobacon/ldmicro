LDmicro0.1
MICRO=Netzer Byte Code
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=C:\PROJECTS\Netzer\Release_1_5\IO\ldmicro\ctc.int

IO LIST
    Xbutton@80 at 0
END

PROGRAM
RUNG
    CONTACTS Xbutton@80 1
    CTC Cwhich 4
END
