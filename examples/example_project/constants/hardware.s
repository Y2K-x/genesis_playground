; Genesis Hardware Constants
; Legend:
;   C_ = Constant
;   P_ = Bus Port
;   A_ = Access Mode
;   R_ = Register
;   S_ = Status
; ------------------------------------------------------------

;Hardware
C_RAM_START                 = $FFFF0000
C_RAM_END                   = $FFFFFFFF

R_HWVERSION                 = $00A10001
R_TMSS                      = $00A14000

; VDP
C_VDP_PLANE_WIDTH           = $200
C_VDP_PLANE_HEIGHT          = $100
C_VDP_DISP_WIDTH            = $140
C_VDP_DISP_HEIGHT           = $E0

P_VDP_CONTROL               = $00C00004
P_VDP_DATA                  = $00C00000
P_VDP_HVCOUNTER             = $00C00008
P_PSG_INPUT                 = $00C00011

A_VDP_CRAM_READ             = $20000000
A_VDP_CRAM_WRITE            = $C0000000
A_VDP_VRAM_READ             = $00000000
A_VDP_VRAM_WRITE            = $40000000
A_VDP_VSRAM_READ            = $10000000
A_VDP_VSRAM_WRITE           = $14000000

S_VDS_PAL                   = $01
S_VDP_DMA                   = $02
S_VDP_HBLANK                = $04
S_VDP_VBLANK                = $08
S_VDP_ODD_FRAME             = $10
S_VDP_SPRITE_COLLISION      = $20
S_VDP_SPRITE_OVERFLOW       = $40
S_VDP_VINT_PENDING          = $80
S_VDP_FIFO_FULL             = $0100
S_VDP_FIFO_EMPTY            = $0200

; Controller Input
P_CTRL_1_CONTROL            = $00A10009
P_CTRL_1_DATA               = $00A10003
P_CTRL_2_CONTROL            = $00A1000B
P_CTRL_2_DATA               = $00A10005

S_CTRL_BTTN_UP              = $01
S_CTRL_BTTN_DOWN            = $02
S_CTRL_BTTN_LEFT            = $04
S_CTRL_BTTN_RIGHT           = $08
S_CTRL_BTTN_A               = $40
S_CTRL_BTTN_B               = $10
S_CTRL_BTTN_C               = $20
S_CTRL_BTTN_START           = $80

;Z80
C_Z80_ADDRESS_SPACE         = $00A10000

P_Z80_BUS                   = $00A11100
P_Z80_RESET                 = $00A11200
