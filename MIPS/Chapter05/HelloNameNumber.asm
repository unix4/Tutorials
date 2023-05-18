.data
hello_space: .asciiz "Hello "
exclaim_nl:  .asciiz "!\n"

.text
# int hello_name_number(char* name, int number)
hello_name_number:
	move $t0, $a0	# save name in t0 since we need a0 for the syscall
	
	li $v0, 4	# print string
	la $a0, hello_space
	syscall
	
	move $a0, $t0	# print name (v0 is still 4)
	syscall
	
	la $a0, exclaim_nl  # print !\n
	syscall
	
	addi $v0, a1, 10 # return number + 10
	jr $ra
