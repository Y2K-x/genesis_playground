; Sega Genesis Hello World Example
; Written by Y2K
; Credits go to various documentation found on line... too much to document right now, but I will at some point in a separate file.
; ------------------------------------------------------------

; Initialization includes
	include init/vectors.s				; Exception Vectors
	include init/header.s				; ROM Header
	include init/system.s				; Entrypoint and Init

; Constants
	include	constants/hardware.s

; Main program
_main:
	move.w	#$8F02,(P_VDP_CONTROL)
	
	jsr		_loadPalettes				; Load color palettes
	
	lea		S_FONT,a0					; load font address into a0
	move.l	#C_FONT_VRAM,d0				; load destination vram address to d0
	move.l	#C_FONT_SIZE_T,d1			; load font tile size to s1
	jsr		_loadFont					; load font sprites
	
	lea		D_Dump1,a0					; load hello world string address to a0
	move.l	#C_FONT_TILE_ID-1,d0		; load starting font tile id to d0
	move.w	#$0000,d1					; load text XY pos to d1
	move.l	#3,d2						; load selected color palette to d2
	jsr		_drawTextPlaneA				; draw text to Plane A
	
	lea		D_Dump2,a0					; load hello world string address to a0
	move.l	#C_FONT_TILE_ID-1,d0		; load starting font tile id to d0
	move.w	#$0001,d1					; load text XY pos to d1
	move.l	#3,d2						; load selected color palette to d2
	jsr		_drawTextPlaneA				; draw text to Plane A
	
	lea		D_Hello,a0					; load hello world string address to a0
	move.l	#C_FONT_TILE_ID-1,d0		; load starting font tile id to d0
	move.w	#$0103,d1					; load text XY pos to d1
	move.l	#3,d2						; load selected color palette to d2
	jsr		_drawTextPlaneA				; draw text to Plane A
	
	lea		D_Hello2,a0					; load hello world string address to a0
	move.l	#C_FONT_TILE_ID-1,d0		; load starting font tile id to d0
	move.w	#$0105,d1					; load text XY pos to d1
	move.l	#0,d2						; load selected color palette to d2
	jsr		_drawTextPlaneA				; draw text to Plane A
	
	lea		D_Hello2,a0					; load hello world string address to a0
	move.l	#C_FONT_TILE_ID-1,d0		; load starting font tile id to d0
	move.w	#$0106,d1					; load text XY pos to d1
	move.l	#1,d2						; load selected color palette to d2
	jsr		_drawTextPlaneA				; draw text to Plane A
	
	lea		D_Hello2,a0					; load hello world string address to a0
	move.l	#C_FONT_TILE_ID-1,d0		; load starting font tile id to d0
	move.w	#$0107,d1					; load text XY pos to d1
	move.l	#2,d2						; load selected color palette to d2
	jsr		_drawTextPlaneA				; draw text to Plane A
	
.0
	bra		.0							; loop forever - we're done for this example

; Subroutine Includes
	include subroutines/graphics.s

; Exception Handlers
	include exception_handlers.s

; Initialization data
	include	init/data/vdp_init_registers.s

; Sprite data
	include spritesheets/font.s

; Palette data
	include palettes/pa_default.s
	
; ASCII Table
	include ascii_map.s
	
D_Dump1:
	dc.b	'0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ.,?!',0
D_Dump2:
	dc.b	'()":#+-/',0
D_Hello:
	dc.b	'HELLO WORLD!',0
D_Hello2:
	dc.b	'THIS IS A PALETTE TEST!',0

_end:
