.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

include c:\masm\Irvine\Irvine32.inc
includelib c:\masm\Irvine\Irvine32.lib

.data
firstval  dword 20002000h ; defines value as hex
secondval dword 11111111h
thirdval  dword 22222222h
sum dword 0

.code
main proc
	mov	eax,firstval				
	add	eax,secondval		
	add eax,thirdval
	mov sum,eax

	call WriteInt
	invoke ExitProcess,0
main endp
end main
