.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

include c:\masm\Irvine\Irvine32.inc
includelib c:\masm\Irvine\Irvine32.lib

.data

.code
main proc
	mov	eax,5	; places immediate value of 5 into eax			
	add	eax,6	; calc 5 + 6				

	invoke ExitProcess,0
main endp
end main
