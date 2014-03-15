LDmicro0.1
MICRO=Netzer Byte Code
CYCLE=10000
CRYSTAL=4000000
BAUD=2400
COMPILED=C:\PROJECTS\Netzer\Release_1_5\IO\ldmicro\simple_socket.int

IO LIST
    Xconnected@A1 at 0
    Xrxok@A2 at 0
    Xtxok@A3 at 0
    Yindi@01 at 0
END

PROGRAM
RUNG
    CONTACTS Xrxok@A2 0
    CONTACTS Xtxok@A3 0
    MOVE skt@07 skt@07
END
RUNG
    CONTACTS Xconnected@A1 0
    COIL Yindi@01 0 0 0
END
