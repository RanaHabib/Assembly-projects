#set3p4
.data
.text
main:
#$a0 = 8
li $a0, 8
jal fact
#$s0 = fact(8)
addi $s0, $v0, 0
#$a0 = 3
li $a0, 3
jal fact
#$s1 = fact(3)
addi $s1, $v0, 0
#$s2 = $s0 + $s1 = t1 + t2 
add $s2, $s0, $s1
#printing final output
li $v0, 1
move $a0, $s2
syscall
#exiting program
li $v0, 10
syscall

fact:
#define n = $t0 = $a0
addi $t0, $a0, 0
#define i = n = $t1
addi $t1, $t0, 0
#define result = 1 = #t2
li $t2, 1
li $t5, 1
j for
for:
#t3 = 1 if i > 1, 0 otherwise.
slt $t3, $t5, $t1
#if i==0 exit
beq $t3, $0, exit
mul $t2, $t2, $t1
subi $t1, $t1, 1
j for
exit:
addi $v0, $t2, 0
jr $ra
