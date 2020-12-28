#Set3p5
.data
userMSG: .asciiz "Please enter the string to check if palindrome. \n"
yes: .asciiz "Yes, it is Palindrome. \n"
no: .asciiz "No, not Palindrome. \n"
string:	.space	20
reversedString:	.space	20
.text
main:
# print user message
li $v0, 4
la $a0, userMSG
syscall
# getting the string
li $v0, 8
la $a0, string
li $a1, 20
syscall

#define i = 0 = $t0
li $t0, 20
#define counter = 0 = $t1
li $t1, 0

j reverse

reverse:
#s0 = 1 if i < 0, 0 otherwise.
slt $s0, $t0, $0
#if i < 0 == 0 then break
bne $s0, $0, resetCounters
lb $s1, string($t0)
sb $s1, reversedString($t1)
subi $t0, $t0, 1
addi $t1, $t1, 1
j reverse

resetCounters:
li $t0, 20
li $t1, 0
j checkPalindrome

checkPalindrome:
#s0 = 1 if i < 0, 0 otherwise.
slt $s0, $t0, $0
#if i < 0 == 0 then break
bne $s0, $0, exit
lb $s1, string($t1)
lb $s2, reversedString($t0)
bne $s1, $s2, false 
subi $t0, $t0, 1
addi $t1, $t1, 1
j checkPalindrome

false:
li $v0, 4
la $a0, no
syscall
#exit program
li $v0, 10
syscall

exit:
li $v0, 4
la $a0, yes
syscall
#exit program
li $v0, 10
syscall
