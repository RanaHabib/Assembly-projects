#SET 3 PROBLEM 3
.data
	array: .word 1:3
	newLine: .ascii "\n"
.text
main:
	#s0 = a
	li $s0, 3 
	#s1 = i
	li $s1, 0
	#s3 = j
	li $s3, 0
	#s5 = size counter
	li $s5, 0
	
	j for
	
	for:
	 #s2 = 1 if i < a, 0 otherwise.
	 slt $s2, $s1, $s0
	 beq $s2, $0, breaks
	 addi $s3, $s1, 0

	 j nestedfor
	 nestedfor:
	  #s4 = 1 if j < 0, 0 otherwise.
	  slt $s4, $s3, $0
	  bne $s4, $0, afterNestedFor
	  lw $t0, array($s5)
	  mul $t0, $t0, $s3
	  sw $t0, array($s5)
	  li $v0, 1
	  move $a0, $t0
	  syscall
	  li $v0, 4
	  la $a0, newLine
	  syscall
	  subi $s3, $s3, 1
	  j nestedfor
	 afterNestedFor:
	  addi $s1, $s1, 1
	  addi $s5, $s5, 4
	  j for

breaks:	

	#exiting program
	li $v0, 10
	syscall
