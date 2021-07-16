; EXCEPTION VECTORS
; ------------------------------------------------------------

    dc.l    $FFFFFE00       ; Initial Stack Pointer
    dc.l    _start          ; Initial PC - start of program
    dc.l    _nullHandler    ; Exception - Bus Error
    dc.l    _nullHandler    ; Exception - Address Error
    dc.l    _nullHandler    ; Exception - Illegal Instruction
    dc.l    _nullHandler    ; Exception - Division by 0
    dc.l    _nullHandler    ; Exception - CHK - Check register against boundaries
    dc.l    _nullHandler    ; Exception - TRAPV - Trap on overflow
    dc.l    _nullHandler    ; Exception - Privilege violation
    dc.l    _nullHandler    ; Exception - Trace
    dc.l    _nullHandler    ; Line 1010 emulator - meant for userland programs to perform syscalls - not useful here unless we define our own
    dc.l    _nullHandler    ; Line 1111 emulator - meant for interfacing with coprosessors on later 68K CPUs - not useful here
    dc.l    _nullHandler    ; Reserved
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; Spurious exception
    dc.l    _nullHandler    ; Interrupt - Level 1 autovector (lowest priority)
    dc.l    _nullHandler    ; Interrupt - Level 2 autovector (used for external serial devices like the Mega Modem)
    dc.l    _nullHandler    ; Interrupt - Level 3 autovector
    dc.l    _nullHandler    ; Interrupt - Level 4 autovector (VDP HBlank)
    dc.l    _nullHandler    ; Interrupt - Level 5 autovector
    dc.l    _nullHandler    ; Interrupt - Level 6 autovector (VDP VBlank)
    dc.l    _nullHandler    ; Interrupt - Level 7 autovector (highest priority)
    dc.l    _nullHandler    ; Exception - TRAP #00
    dc.l    _nullHandler    ; Exception - TRAP #01
    dc.l    _nullHandler    ; Exception - TRAP #02
    dc.l    _nullHandler    ; Exception - TRAP #03
    dc.l    _nullHandler    ; Exception - TRAP #04
    dc.l    _nullHandler    ; Exception - TRAP #05
    dc.l    _nullHandler    ; Exception - TRAP #06
    dc.l    _nullHandler    ; Exception - TRAP #07
    dc.l    _nullHandler    ; Exception - TRAP #08
    dc.l    _nullHandler    ; Exception - TRAP #09
    dc.l    _nullHandler    ; Exception - TRAP #10
    dc.l    _nullHandler    ; Exception - TRAP #11
    dc.l    _nullHandler    ; Exception - TRAP #12
    dc.l    _nullHandler    ; Exception - TRAP #13
    dc.l    _nullHandler    ; Exception - TRAP #14
    dc.l    _nullHandler    ; Exception - TRAP #15
    dc.l    _nullHandler    ; Reserved
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "
    dc.l    _nullHandler    ; "