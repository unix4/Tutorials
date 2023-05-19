.text
main:
	li $a0, 3
	jal sum
	
	move $a0, $v0
	
	li $v0, 1
	syscall
	
	li $v0, 10 # exit
	syscall

sum:
	addi    $sp, $sp, -4
	sw      $ra, 0($sp)
	
	move $s0, $a0
	ble $s0, 1, sum_exit
	
	add $s2, $s2, $s0
	
	addi $a0, $a0, -1 #  n --
	
	jal sum
	
sum_exit:
	lw      $ra, 0($sp) # exit
	addi    $sp, $sp, 4
	move $v0, $s2
	addi	$v0, $v0, 1
	jr $ra
