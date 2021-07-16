; EXCEPTION HANDLERS
; ------------------------------------------------------------

_nullHandler:
	move.w	#$1,d0
	rte
	
_stackTrace:
	move.w	#$2,d0
	rte

_vBlankHandler:
	;move.w	#$3,d0
	rte
	
_hBlankHandler:
	;move.w	#$4,d0
	rte