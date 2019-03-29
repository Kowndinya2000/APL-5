.data
var1:	.word 4 #multiplicand
var2: .word 2 #multiplier
var3: .space 8#solution
Cout: .space 1#carry out put
.text
main:
add $t0,$0,$0
add $s0,$0,$0
add $s1,$0,$0
add $s2,$0,$0
lw $s3,var2
add $t1,$0,$0

loop:
and $t1,$s3,1
srl $s3,$s3,1
beq $t1,1,addShift
beq $t1,0,Shift

addShift:
addu $t1,$s1,$0
lw $s4,var1
addu $s1,$s1,$s4
sltu $t2,$s1,$t1
sltu $s0,$s1,$s4
or $s0,$s0,$t2
j Shift

Shift:
li $t4,0
andi $t4,$s1,1
sll $t4,$t4,31
srl $s2,$s2,1
or $s2,$s2,$t4
srl $s1,$s1,1
add $t4,$s0,$0
sll $t4,$t4,31
or $s1,$s1,$t4
addi $t0,$t0,1
blt $t0,32,loop
j exit

exit:
li $t0,0
sw $s2,var3($t0)
addi $t0,$0,4
sw $s1,var3($t0)
sw $s0,Cout
li $v0,10
j $ra
