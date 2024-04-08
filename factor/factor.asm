_TEXT SEGMENT BYTE PUBLIC 'CODE'
  ASSUME CS:_TEXT
PUBLIC _factor
_factor PROC FAR
  push bp
  mov bp, sp
  mov bx, 6[bp]
  mov cx, 1
  cmp bx, cx
  je .FIN
  dec bx
  push bx 
  call _factor
  add sp, 2
  mul WORD PTR 6[bp]
  ret
.FIN:
  mov ax, 1
  sub sp, 6
_factor ENDP
_TEXT ENDS
END
