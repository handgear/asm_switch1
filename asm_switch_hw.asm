	.386
	.model flat,c
	.stack 100h
printf	PROTO arg1:Ptr Byte, printlist:VARARG
scanf	PROTO arg1:Ptr Byte, inputlist:VARARG
	.data
num1	sdword ?
num2	sdword ?
addr1	sdword ?
in1fmt	byte "%d",0
msg1fmt	byte "%s",0Ah,0
msg2fmt byte "%s%s",0Ah,0
msg1	byte "<메뉴>",0
msg2 	byte "1번 성수면",0
msg3 	byte "2번 수성면",0
msg4 	byte "3번 문수면",0
msg5 	byte "입력:",0
msg6 	byte "을 선택하셨습니다.후르륵 찹찹!!~~",0
	.code
main	proc
		INVOKE printf, ADDR msg1fmt, ADDR msg1
		INVOKE printf, ADDR msg1fmt, ADDR msg2
		INVOKE printf, ADDR msg1fmt, ADDR msg3
		INVOKE printf, ADDR msg1fmt, ADDR msg4
		INVOKE printf, ADDR msg1fmt, ADDR msg5
		INVOKE scanf, ADDR in1fmt, ADDR num1
		mov eax,num1
switch01	cmp eax,1
		je case11
		cmp eax,2
		je case12
		cmp eax,3
		je case13
case11: INVOKE printf, ADDR msg2fmt, ADDR msg2, ADDR msg6
		jmp endswitch01
case12: INVOKE printf, ADDR msg2fmt, ADDR msg3, ADDR msg6
		jmp endswitch01
case13: INVOKE printf, ADDR msg2fmt, ADDR msg4, ADDR msg6
		jmp endswitch01
endswitch01: 	nop
	ret
main	endp
	end





