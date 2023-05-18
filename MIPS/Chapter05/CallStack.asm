.text
non_leaf:
	addi $sp, $sp, -4	# space to save 1 register, $ra
	sw $ra, 0($sp) # store ra in the newly allocated stack space
	
	jal func1
	
	li $v0, 42	# return 42
	
	lw $ra, 0($sp)	# restore original $ra
	addi $sp, $sp, 4 # pop the stack
	jr $ra
