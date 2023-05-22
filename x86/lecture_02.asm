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

start:
	;Useful: 
	mov ebx, OFFSET example ; load address of example
	mov eax, [ebx+4]

	call WriteInt
	invoke ExitProcess,0
main endp

; Place your procedure here

end main
