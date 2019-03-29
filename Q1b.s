	.data
var1:	.word	-20
var2:   .word   0
	.text
main:
lw $s0,var1
lw $t0,var2
#addi $s0,$0,-20
slt $t0,$s0,$0
sw $s0,var1
sw $t0,var2
j $ra
