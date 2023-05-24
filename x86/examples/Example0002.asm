.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

include c:\masm\Irvine\Irvine32.inc
includelib c:\masm\Irvine\Irvine32.lib

.data
my_name db "Marcel",0 ; zero terminating string
my_name_size = ($ - my_name)
output db " - Number of letters: ",0
.code
main proc	
	mov edx, OFFSET my_name
	call WriteString

	mov edx, OFFSET output
	call WriteString

	mov eax, my_name_size
	dec eax
	call WriteInt 

	invoke ExitProcess,0
main endp

; Place your procedure here

end main
