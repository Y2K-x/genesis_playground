; ROM HEADER
; ------------------------------------------------------------

    dc.b    'SEGA GENESIS    '                                  ; Console Type
    dc.b    '(C)Y2K 2021.JULY'                                  ; Copyright
    dc.b    "Y2K'S GENESIS PLAYGROUND                        "  ; ROM domestic name 
    dc.b    "Y2K'S GENESIS PLAYGROUND                        "  ; ROM international name
    dc.b    'GM 20210712-01'                                    ; prog type | serial number | version number
    dc.w    $0000                                               ; ROM checksum
    dc.b    'J               '                                  ; I/O device support (unused)
    dc.l    0                                                   ; ROM start address
    dc.l    _end                                                ; ROM end address
    dc.l    $FF0000                                             ; RAM start address
    dc.l    $FFFFFF                                             ; RAM end address
    dc.b    '               '                                   ; Backup RAM info
    dc.b    '                        '                          ; Modem info (unused)
    dc.b    'BELIEVE IN YOU HABILITIES'                         ; Notes (:P)
    dc.b    'JUE             '                                  ; Allowed regions
    