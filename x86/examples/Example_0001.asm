.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

include c:\masm\Irvine\Irvine32.inc
includelib c:\masm\Irvine\Irvine32.lib

.data
output db "Hello World",0 ; zero terminating string

.code
main proc	
	mov edx, OFFSET output
	call WriteString
	invoke ExitProcess,0
main endp

; Place your procedure here

end main
