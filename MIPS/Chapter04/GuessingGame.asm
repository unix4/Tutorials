.data
input_txt: .asciiz "I'm thinking of a number 0-100.  Try to guess it!"
guess_txt: .asciiz "Guess a number: "
low_txt:   .asciiz "Too low!"
high_txt:  .asciiz "Too high!"
correct_txt:   .asciiz "Correct, it was "
tries_txt:  .asciiz "Tries: "

.text

	li $t1, 32 # 32 in this case is the random number
	li $t2, 0 # First try
	
	li $v0, 4 	
	la $a0, input_txt
	syscall
	
guess:
	li $v0, 11
	la $a0, 10
	syscall
	
	li $v0, 4
	la $a0, guess_txt
	syscall

	li $v0, 5
	syscall
	
	addi $t3, $t3, 1
	
	blt $v0, $t1, low	
	bgt $v0, $t1, high
	j exit
low:
	li $v0, 4
	la $a0, low_txt
	syscall
	j guess
high:
	li $v0, 4
	la $a0, high_txt
	syscall
	j guess
exit:
	li $v0, 4
	la $a0, correct_txt
	syscall
	
	move $a0, $t1
	li $v0, 1
	syscall
	
	li $v0, 11
	la $a0, 10
	syscall
	
	li $v0, 4
	la $a0, tries_txt
	syscall
	
	move $a0, $t3
	li $v0, 1
	syscall
