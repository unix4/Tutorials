.data
done: .asciiz "Loop finished! "
.text

	li $t0, 0 # sum = 0
	li $t1, 1 # i = 1 we can start at 1 because obiously adding 0 is pointless
	li $t2,100
	
loop:
	add $t0, $t0, $t1        # sum += i
	addi $t1, $t1, 1	# i++
	blt  $t1, $t2, loop	# while (i < 100)
	
finished:
	li $v0, 4
	la $a0, done
	syscall
