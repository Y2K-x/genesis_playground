; VDP INITIALZATION DATA
; ------------------------------------------------------------

D_VDPINIT:
	dc.w	$8004				; 9 bit palette
	dc.w	$8174				; DMA + VBlank Interrupt enabled, genesis display mode
	dc.w	$8230				; Scroll A Plane VRAM address
	dc.w	$8328				; Window Plane VRAM address
	dc.w	$8407				; Scroll B Plane VRAM address
	dc.w	$855C				; Sprite attributes VRAM address
	dc.w	$8600				; Unused
	dc.w	$8700				; BG color
	dc.w	$8800				; Unused
	dc.w	$8900				; Unused
	dc.w	$8A00				; HBlank Interrupt Register - h-int generated every line
	dc.w	$8B00				; Scroll mode - full screen scroll
	dc.w	$8C81				; Cell mode - 40 cell display, no interlace
	dc.w	$8D2F				; Horizontal scroll VRAM address
	dc.w	$8E00				; unused
	dc.w	$8F02				; VDP auto increment data
	dc.w	$9001				; Scroll size - 64 cells hscroll, 32 cells vscroll
	dc.w	$9100				; window horizontal position
	dc.w	$9200				; window vertical position
	dc.w	$93FF				; DMA length low word
	dc.w	$94FF				; DMA length high word
	dc.w	$9500				; DMA source address low word
	dc.w	$9600				; DMA source address high word
	dc.w	$9780				; DMA type - vram fill
D_VDPINIT_END:
