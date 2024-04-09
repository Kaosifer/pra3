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
  call FAR PTR _factor
  pop bx
  inc bx
  mul bx
  pop bp
  ret
.FIN:
  pop bp
  mov ax, 1
  ret
_factor ENDP
_TEXT ENDS
END
