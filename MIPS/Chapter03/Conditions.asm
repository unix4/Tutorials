.text
main:
	ble $t0, $0, less_eq_0	# if (a <= 0) goto less_eq_0 
	addi $t0, $t0, 1	# a++
less_eq_0:
	sll $t0, $t0, 1		# a*= 2 (shifting left by n is multiplying by 2 ^n
