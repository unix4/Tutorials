.data
true_str: .asciiz "true\n"

.text
	li $t8, 10 	# get the necessary literals in some unused regs
	li $t9, 100
	
	bgt $t0, $t8, do_true # if (a > 100) goto do_true
	ble $t2, $t9, done_if # if (c <= 100) goto done_if
	blt $t1, $t2, done_if # if (b < c) goto done_if
	
do_true:
	li $v0, 4		# print string
	la $a0, true_str	# address of str in a0
	syscall
	
done_if:
	ori $t1, $t1, 0xAA	# b | = 0xAA
