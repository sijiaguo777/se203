# Start JLinkExe with the appropriate device and interface
.PHONY: startjlinkexe
startjlinkexe:
	JLinkExe -device STM32L475VG -speed auto -if SWD

# Start JLinkGDBServer with the appropriate options
.PHONY: startgdbserver
startgdbserver:
	JLinkGDBServer -device STM32L475VG -endian little -if SWD -speed auto -ir -LocalhostOnly



