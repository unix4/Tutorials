.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

include c:\masm\Irvine\Irvine32.inc
includelib c:\masm\Irvine\Irvine32.lib

.data
sum dword 0

.code
main proc
	mov	eax,5				
	add	eax,6				
	mov sum,eax

	call WriteInt

	invoke ExitProcess,0
main endp
end main
