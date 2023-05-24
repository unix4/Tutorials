.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

include c:\masm\Irvine\Irvine32.inc
includelib c:\masm\Irvine\Irvine32.lib

.data
my_var DWORD 1
.code
main proc
	mov eax, BYTE ; 1 Byte
	call WriteInt

	mov eax, WORD ; 2 Bytes
	call WriteInt

	mov eax, DWORD ; 4 Bytes
	call WriteInt

	mov eax, TYPE my_var ; 4 Bytes
	call WriteInt

	invoke ExitProcess,0
main endp
end main
