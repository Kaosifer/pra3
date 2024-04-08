DGROUP GROUP _DATA, _BSS; Se agrupan segmentos de datos en uno
EXTRN _num : WORD; Segmento de datos público

_TEXT SEGMENT BYTE PUBLIC ‘CODE’
ASSUME CS:_TEXT, DS:DGROUP
PUBLIC _funcion
_funcion PROC NEAR
PUSH BP
MOV BP, SP
MOV BX, [ BP+4 ]
LDS SI, [ BP+6 ]
MOV CX, [ BP+10 ]
...; Definición del segmento de código
MOV AX, CX
POP
BP
RET
_funcion ENDP
_TEXT ENDS
END
START PROC 
    ;INICIALIZA LOS REGISTROS DE SEGMENTO CON SUS VALORES 
    MOV AX, DATOS 
    MOV DS, AX 

    MOV AX, PILA 
    MOV SS, AX 

    MOV AX, EXTRA 
    MOV ES, AX 

    ; CARGA EL PUNTERO DE PILA CON EL VALOR MAS ALTO 
    MOV SP, 64 

    ; FIN DE LAS INICIALIZACIONES 

    ;COMIENZO DEL PROGRAMA 
    MOV CL, DATO_1 
    CALL FACTOR 
    MOV FACT_DATO_1, AX       ; ALMACENA EL RESULTADO 
    MOV CL, DATO_2 
    CALL FACTOR 
    MOV BX, FACT_DATO_1 
    MUL BX                    ; EN AX ESTA EL RESULTADO DEL FACTORIAL DEL SEGUNDO 

    ; ALMACENA EL RESULTADO 
    MOV RESULT, AX 
    MOV RESULT+2, DX 

    ; FIN DEL PROGRAMA 
    MOV AX, 4C00H 
    INT 21H 

START ENDP 
;_______________________________________________________________ 
; SUBRUTINA PARA CALCULAR EL FACTORIAL DE UN NUMERO 
; ENTRADA CL=NUMERO 
; SALIDA AX=RESULTADO, DX=0 YA QUE CL<=9 
;_______________________________________________________________ 

FACTOR PROC FAR
    PUSH BP
    MOV BP, SP
FIN: 
    POP BP
    RET 
FACTOR ENDP 

; FIN DEL SEGMENTO DE CODIGO 
CODE ENDS 
; FIN DEL PROGRAMA INDICANDO DONDE COMIENZA LA EJECUCION 
END START 

