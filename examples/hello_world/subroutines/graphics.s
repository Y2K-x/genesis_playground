; GRAPHICS SUBROUTINES
; ------------------------------------------------------------

_loadPalettes:
    move.l  #$F0000000,(P_VDP_CONTROL)          ; Setup VDP to write to CRAM $0000
    lea     D_Palettes,a0                       ; load address of color palettes to a0
    move.l  #$1F,d0                             ; 128 bytes (32 - 1 longs) of palette data
.0:
    move.l  (a0)+,(P_VDP_DATA)                  ; load palette data to CRAM
    dbra    d0,.0                               ; decrement d0 and branch if not 0
    rts
    
_loadFont:
; a0 - Font address
; d0 - VRAM address
; d1 - Number of characters
    swap    d0                                  ; shift VRAM address to upper word of d0
    add.l   #$40000000,d0                       ; add VRAM write command to VRAM destination address
    move.l  d0,(P_VDP_CONTROL)                  ; setup VDP to write to VRAM destination address
    
    subq.b  #1,d1                               ; number of characters - 1
.charCopy
    move.w  #$07,d2                             ; 8 longs in a tile
.longCopy
    move.l  (a0)+,(P_VDP_DATA)                  ; copy each line of tile to VRAM
    dbra    d2,.longCopy                        ; loop until we're done with this character
    dbra    d1,.charCopy                        ; loop back and copy the next character
    rts

_drawTextPlaneA:
; a0 - String address
; d0 - First tile ID of font
; d1 - XY coord (in tiles)
; d2 - palette
    clr.l   d3                                  ; clear d3
    move.b  d1,d3                               ; move Y coordinate to d3
    mulu.w  #$40,d3                             ; multiply y by line width - 40 col mode = 64 lines - this gets us our y offset
    ror.l   #$8,d1                              ; shift x coordinate from upper word of d1 to lower word
    add.b   d1,d3                               ; add x coordinate to offset
    mulu.w  #$2,d3                              ; convert to words
    swap    d3                                  ; shift address offset to upper word
    add.l   #$40000003,d3                       ; add VDP PlaneA write command + address
    move.l  d3,(P_VDP_CONTROL)                  ; setup VDP to write to the destination address
    
    clr.l   d3                                  ; clear d3
    move.b  d2,d3                               ; move palette ID to d3
    rol.l   #$8,d3                              ; shift palette ID to bits 14 and 15
    rol.l   #$5,d3                              ; can only rol up to 8 bits in one instruction
    
    lea     D_ASCIIMap,a1                       ; load ASCII map address to a1  
.charCopy:
    move.b  (a0)+,d2                            ; move ascii byte to lower byte of d2
    cmp.b   #0,d2                               ; test if byte is 0 for string null terminator
    beq.b   .end                                ; we're done drawing this string, branch to return
    
    sub.b   #C_ASCIIStart,d2                    ; Subtract the first ASCII code to get our table index
    move.b  (a1,d2.w),d3                        ; move tile id from table (index in lower word of d2) to lower byte of d3
    add.w   d0,d3                               ; offset our tile ID by first tile ID in font
    move.w  d3,(P_VDP_DATA)                     ; write palette and tile IDs to VRAM
    jmp     .charCopy                           ; loop to start the next character
.end
    rts