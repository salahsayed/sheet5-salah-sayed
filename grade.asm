.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    grade1 dword ?
	grade2 dword ?
	grade3 dword ?
	grade4 dword ?
	weight1 dword ?
	weight2 dword ?
	weight3 dword ?
	weight4 dword ?
	
	promt1 byte "please enter grade1?",0
	promt2 byte "please enter weight1 ?",0
	promt3 byte "please enter grade2?",0
	promt4 byte "please enter weight2 ?",0
	promt5 byte "please enter grade3?",0
	promt6 byte "please enter weight3 ?",0
	promt7 byte "please enter grade4?",0
	promt8 byte "please enter weight4 ?",0
	asd byte   40 DUP (?)
	res byte "the weighted sum is : ",0
	sum byte "the sum of weights is : ",0
	avr byte "the weighted average is : ",0
	result byte   11 DUP (?),0

.CODE
MainProc PROC
    input promt1,asd,40
	atod asd
	mov grade1,eax
	input promt2,asd,40
	atod asd
	mov weight1,eax
	input promt3,asd,40
	atod asd
	mov grade2,eax
	input promt4,asd,40
	atod asd
	mov weight2,eax
	input promt5,asd,40
	atod asd
	mov grade3,eax
	input promt6,asd,40
	atod asd
	mov weight3,eax
	input promt7,asd,40
	atod asd
	mov grade4,eax
	input promt8,asd,40
	atod asd
	mov weight4,eax
	mov eax,grade1
	mul weight1
	mov ebx,grade2
	imul ebx,weight2
	add eax,ebx
	mov ebx,grade3
	imul ebx,weight3
	add eax,ebx
	mov ebx,grade4
	imul ebx,weight4
	add eax,ebx
	dtoa result,eax
	output res,result

	mov ebx,weight1
	add ebx,weight2
	add ebx,weight3
	add ebx,weight4
	dtoa result,ebx
	output sum,result
	
	;cdq
	div ebx
	dtoa result,eax
	output avr,result

   mov eax,0
   ret
MainProc ENDP
END