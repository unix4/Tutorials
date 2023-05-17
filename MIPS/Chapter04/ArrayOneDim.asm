.data
done: .asciiz "Loop finished! "
.text

	li $t0, 0 # total = 0
	li $t1, 0 # i = 0
	la $t2, numbers # t2 = numbers
	li $t3, 10

sum_loop:
	sll $t4, $t1, 2	# t4 = i*sizeof(int) == i* 4
	add $t4, $t4, $t2 # t4 = &numbers[i]
	lw $t4, 0($t4)	# t4 = numbers[i]
	add $t0, $t0, $t4  # total += numbers[i]
	
	addi $t1, $t1, 1 # i++
	blt $t1, $t3, sum_loop # while ( i < 10)
