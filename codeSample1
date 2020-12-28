#sample 1
#equavalent C code
#if (g >= h) g++;
#else g--;

.data
.text
main:
	#for reading g
	li $v0, 5
	syscall
	
	#s1 = g
	addi $s1, $v0, 0
	
	#for reading h
	li $v0, 5
	syscall
	
	#s2 = h
	addi $s2, $v0, 0
	   
	#s0 = 1 if g < h, 0 otherwise.
	slt  $s0, $s1, $s2
	
	# if s0 != 0, branch to else
	bne $s0, $0, else
	addi $s1, $s1, 1
	j breaks
	else:
	subi $s1, $s1, 1
breaks:	
	#printing the final value
	li $v0, 1
	add $a0, $s1, 0
	syscall
	
	#exiting program
	li $v0, 10
	syscall
.end main
