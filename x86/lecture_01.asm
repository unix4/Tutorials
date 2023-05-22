.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

include c:\masm\Irvine\Irvine32.inc
includelib c:\masm\Irvine\Irvine32.lib

.code
main proc		

start:	
	mov eax, 1
	mov ebx, 2
	mov ecx, 16h ; Hex-Values marked with h

	mov eax, 11111111h
	mov al, 3
	mov ah, 5
	; or
	mov ax,0503h
	mov ah, [start] ; address of start - label

	call WriteInt
	invoke ExitProcess,0
main endp

; Place your procedure here

end main
