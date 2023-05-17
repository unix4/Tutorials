.text
main:
	bgt $t0, $0, greater_0 # if (a > 0) goto greater_0
	addi $t1, $t1, -50     # b -= 50
	j less_eq_0
greater_0:
	li $t1, 100	       # b = 100
less_eq_0:

	# or
	
	ble $t0, $0, less_eq_0	# if ( a<=0 ) goto less_eq_0
	li $t1, 100		# b = 100
	j greater_0
less_eq_0_:
	addi $t1, $t2, -50	# b -= 50
greater_0_:
