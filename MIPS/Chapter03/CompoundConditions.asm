.text
main:
	li $t9, 10
	ble 
	ble $t0, $t9, no_add20	# if (a <= 10) goto no_add20
	bge $t0, $t1, no_add20	# if (a >=b) goto no_add20
	
	addi $t2, $t2, 20	# c += 20
no_add20:
	andi $t1, $t1, 0xFF
