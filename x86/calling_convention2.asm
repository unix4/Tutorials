.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

include c:\masm\Irvine\Irvine32.inc
includelib c:\masm\Irvine\Irvine32.lib

.data
example dword 1, 2, 3

.code
main proc		
	push 3
	push example
	call subroutine
start:
	
	invoke ExitProcess,0
main endp

subroutine proc
	enter 8, 0
		; [ebp-8] - local variable
		; [ebp-4] - local variable
		; [ebp] - stored ebp
		; [ebp+4] - return address
	mov dword [ebp-8], 1234

	mov ebx, [ebp+8]
	mov ecx, [ebp+12]
lower:
	add byte [ebx], 20h
	inc ebx
	loop lower

	leave 
	ret 8

subroutine endp
; Place your procedure here

end main
