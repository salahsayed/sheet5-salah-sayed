.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   pennies dword ?
   nickels dword ?
   dimes dword ?
   quarters dword ?
   fifty_cent  dword ?
   dollar dword ?
   promt1 byte "please enter pennies coins: ",0
   promt2 byte "please enter nickels coins: ",0
   promt3 byte "please enter dimes coins: ",0
   promt4 byte "please enter quarters coins: ",0
   promt5 byte "please enter fifty_cent coins: ",0
   promt6 byte "please enter doller coins: ",0
   res byte "the value of dollar is: ",0
   asd byte   40 DUP (?)
   result byte   11 DUP (?)   
     dol byte    " dollar ",0
     outp byte     "END the value of cent is :",0
     cent   byte   11 DUP (?)
    asd1   byte     " cent ",0
	





.CODE
MainProc PROC

    input promt1,asd,40
	atod asd
	mov pennies,eax
	input promt2,asd,40
	atod asd
	mov  nickels,eax
	input promt3,asd,40
	atod asd
	mov  dimes,eax
	input promt4,asd,40
	atod asd
	mov  quarters,eax
	input promt5,asd,40
	atod asd
	mov  fifty_cent,eax
	input promt6,asd,40
	atod asd
	mov  dollar,eax
	mov eax,pennies
	mov ebx,nickels
	imul ebx,5
	add eax,ebx
	mov ebx,dimes
	imul ebx,10
	add eax,ebx
	mov ebx,quarters
	imul ebx,25
	add eax,ebx
	mov ebx,fifty_cent
	imul ebx,50
	add eax,ebx
	mov ebx,dollar
	imul ebx,100
	add eax,ebx
	cdq 
	mov ebx,100
	div ebx
	dtoa result ,eax
	output res,result
	dtoa cent, edx
	output outp,cent



   mov eax,0
   ret
MainProc ENDP
END