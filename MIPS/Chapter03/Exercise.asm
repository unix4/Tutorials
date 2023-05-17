.data
enter_int: .asciiz "Enter an integer: "
greater: .asciiz "the number is greater than 50 "
less: .asciiz "The number iss less than 50 "
equal: .asciiz "You entered 50! "

.text
	li $v0, 4
	la $a0, enter_int
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, 50, is_equal
	blt $t0, 50, is_less
	bgt $t0, 50, is_greater
	
is_equal:
	li $v0, 4 
	la $a0, equal
	syscall
	j exit
is_greater:
	li $v0, 4
	la $a0, greater
	syscall
	j exit
is_less:
	li $v0, 4
	la $a0, less
	syscall
	j exit
exit:
	li $v0, 10
	syscall
