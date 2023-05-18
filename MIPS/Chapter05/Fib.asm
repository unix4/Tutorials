# int fib(int n)

fib:
	addi $sp, $sp, -8
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	
	move $v0, $a0	# prepare to return n
	li $t0, 1
	ble $a0, $t0, exit_fib # if(n<=1) goto exit_fib (ie return n
	
	move $s0, $a0	# save n
	
	addi $a0, $a0, -2 # a0 = n - 2
	jal fib	# (fib n -2)
	
	addi $a0, $s0, -1 # a0 = n -1, prep arg first so we can use s0 to save v0
	move $s0, $v0 	# save return of fib(n-2) in s0
	jal fib		# fib(n-1)
	
	add $v0, $v0, $s0	# v0 = fib(n-1) + fib(n-2)
	
exit_fib:
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addi $sp, $sp, 8
	jr $ra
