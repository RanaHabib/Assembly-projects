.data
	grade: .space 12
	finalGrade: .asciiz "Total grade is: "
.text
main:
	li $v0, 5
	syscall
	
	la $t0, grade
	
	addi $t1, $v0, 0
	sw $t1, ($t0)
	addi $s0, $t1, 0
	
	li $v0, 5
	syscall
	
	addi $t1, $v0, 0
	sw $t1, 4($t0)
	add $s0, $t1, $s0
	
	li $v0, 5
	syscall
	
	addi $t1, $v0, 0
	sw $t1, 8($t0)
	add $s0, $t1, $s0
	
	li $v0, 4
	la $a0, finalGrade
	syscall
	
	li $v0, 1
	add $a0, $s0, 0
	syscall
	
	li $v0, 10
	syscall
.end main
