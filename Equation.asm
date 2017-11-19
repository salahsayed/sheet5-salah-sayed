.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    x dword ?
	y dword ?
	z dword ?
	promt1 byte "enter x number:",0
	promt2 byte "enter y number:",0
	promt3 byte "enter z number:",0
	asd byte   40 DUP(?)
	res byte "the result is: ",0
	result byte  11 DUP(?),0

.CODE
MainProc PROC
   input promt1,asd,40
   atod asd
   mov x,eax

   input promt2,asd,40
   atod asd
   mov y,eax

   input promt3,asd,40
   atod asd
   mov z,eax
   mov eax,x
   add eax,y
   imul eax,2
   add eax,z

   dtoa result ,eax
   output res,result

  mov eax,0
  ret
MainProc ENDP
END