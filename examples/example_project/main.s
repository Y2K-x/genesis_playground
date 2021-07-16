; Sega Genesis Example Project
; Written by Y2K
; Credits go to various documentation found on line... too much to document right now, but I will at some point in a separate file.
; ------------------------------------------------------------

; Initialization includes
    include init/data/vectors.s         ; Exception Vectors
    include init/data/header.s          ; ROM Header
    include init/system.s               ; Entrypoint and Init

; Constants
    include constants/hardware.s

; Main program
_main:
    move.w  #$1337,d0                   ; move $1337 to d0
    bra     _main                       ; loop

; Exception Handlers
    include exception_handlers.s

; Initialization data
    include init/data/vdp_init_registers.s

_end: