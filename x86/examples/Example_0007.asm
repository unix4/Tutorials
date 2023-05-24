.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

include c:\masm\Irvine\Irvine32.inc
includelib c:\masm\Irvine\Irvine32.lib

.data
result DB "The result is : ",0
intarray DWORD 1, 2, 3, 4

.code
main proc
	mov edi, OFFSET intarray	; 1: EDI = address of intarray
	mov ecx, LENGTHOF intarray	; 2: initialize loop counter
	mov eax, 0					; 3 sum = 0
L1:
	add eax,[edi]				; 4: add an integer
	add edi, TYPE intarray		; 5: point to next element
								; 5: same as add edi, DWORD
	loop L1
	
	mov edx, OFFSET result
	call WriteString
	call WriteInt

	invoke ExitProcess,0
main endp
end main
