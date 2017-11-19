.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    L dword ?
	w dword ?
	promt1 byte "enter length of rectangle: ",0
	promt2 byte "enter width of rectangle: ",0
	asd byte  40 DUP(?)
	res byte "the perimeter of rectangle is:",0
	result byte   11 DUP(?),0


.CODE
MainProc PROC
      input promt1, asd,40
	  atod asd
	  imul eax,2
	  mov L,eax
	  input promt1, asd,40
	  atod asd
	  imul eax,2
	  mov w,eax
	  add eax,L
	  dtoa result,eax
	  output res,result
	 
  
  mov eax,0
  ret
MainProc ENDP
END