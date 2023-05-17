.text
main:
	addi $t1, $t1, -50	# b -= 50
	ble  $t0, $0, less_eq_0 # if (a <= 0) goto less_eq_0
	li   $t1, 100		# b = 100
less_eq_0:
