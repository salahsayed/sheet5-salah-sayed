.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   a dword ?
   b dword ?
   x dword ?
   y dword ?
   promt1 byte "enter first degree: ",0
   promt2 byte "enter second degree: ",0
   promt3 byte "enter thrid degree: ",0
   promt4 byte "enter four degree: ",0
   inp byte   40 DUP (?)
   res byte "the sum of degree is: ",0
   avr byte "the average of number is:",0
   result dword    11 DUP (?),0

.CODE
MainProc PROC
       input promt1,inp,40
	   atod inp
	   mov a,eax
	   input promt2,inp,40
	   atod inp
	   mov b,eax
	   input promt3,inp,40
	   atod inp
	   mov x,eax
	   input promt4,inp,40
	   atod inp
	   ;mov y,eax
	   add eax,a
	   add eax,b
	   add eax,x
	  dtoa result,eax
	  output res,result
	 cdq
	  mov ebx,4
	  div ebx
	  dtoa result,eax
	  output avr,result
	  
	   
	  
	   
	   
	  
  mov eax,0
  ret
MainProc ENDP
END