_TEXT SEGMENT BYTE PUBLIC 'CODE'
  ASSUME CS:_TEXT
PUBLIC _factor
_factor PROC NEAR
  push bp
  mov bp, sp

  mov AX, 6[BP]
  cmp AX, 1
  je  .FIN
  mov BX, AX
  call _factor
  mul BX
.FIN:
  pop bp
  ret
_factor ENDP
_TEXT ENDS
END
