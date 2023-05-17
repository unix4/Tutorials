.text
main:
	li $t1, 2
	mult $t0, $t1
	mflo $t0  # a *= 2
	
	# or
	li $t1, 2
	mul $t0, $t0, $t1 # a *= 2
