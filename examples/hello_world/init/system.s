; SYSTEM INITIALIZATION BOILERPLATE
; ------------------------------------------------------------

_start:
	move.w	#$2700,sr							; Disable interrupts
	
.TMSSCheck:
	move.b	($A10001),d0						; Move hardware version into d0
	andi.b	#$0F,d0								; Bitwise AND last 4 bits in d0 - contains hardware version
	beq.b	_initController						; skip to controller init if on v1 hardware
	move.l	#'SEGA',($A14000)					; copy 'SEGA' to TMSS register to prevent VDP lockout

_initController:
	move.b	#$40,(P_CTRL_1_CONTROL)
	move.b	#$40,(P_CTRL_1_DATA)
	
_initVDP:
	lea		(D_VDPINIT),a0						; load addr of VDP init data to a0
	move.w	#(D_VDPINIT-D_VDPINIT_END)/2,d1		; move length of init data to d0
.0:
	move.w	(a0)+,(P_VDP_CONTROL)				; write init data to VDP registers
	dbf		d1,.0								; decrement d1 and loop is not 0
	
_clearCRAM:
	move.l	#A_VDP_CRAM_WRITE,(P_VDP_CONTROL)	; set VDP to write to CRAM
	move.w	#$3f,d1								; store num of palettes sub 1 in d1
.0:
	move.w	#$0000,(P_VDP_DATA)					; clear CRAM
	dbf		d1,.0								; decrement d1 and loop if not 0
	
_clearVRAM:
	move.l	#A_VDP_VRAM_WRITE,(P_VDP_CONTROL)	; set VDP to write to VRAM
	move.w	#$7FFF,d1							; store VRAM size in d1
.0:
	move.w	#$0000,(P_VDP_DATA)					; clear VRAM]
	dbf		d1,.0								; decrement d1 and loop if not 0
	
_clearRAM:
	lea		C_RAM_START,a0						; load start of RAM to a0
	move.w	#(C_RAM_END),d1						; move end of RAM to d1, for our loop counter
.0:
	move.w	#$0000,(a0)+						; clear RAM
	dbf		d1,.0								; decrement d1 and loop if not 0
	
_endInit:
	move.w	#$2000,sr							; Re-enable interrupts