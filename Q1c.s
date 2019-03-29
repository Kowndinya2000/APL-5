.data
var1:	.word	3
var2:   .word   0
var3:   .word	0
var4:	.word	0
	.text
main:
	lw $s1,var1
	lw $s2,var2
	lw $t0,var4
	lw $s3,var3
	
	addi $t1,$0,2 #2
	add $t3,$0,$s1 #20
	slti $t2,$t0,32 #1or0
	beq $t2,$0,EXIT
	div $t3,$t1
	mfhi $t4 #reminder
	mflo $t3 #quotient
	addi $t0,$t0,1
	beq $t4,$0,con1
	bne $t4,$0,con2
con1:
	addi $s2,$s2,1
	j loop2
con2:
	addi $s3,$s3,1
	j loop3
loop2:
	slti $t2,$t0,32 #1or0
	beq $t2,$0,EXIT
	div $t3,$t1
	mfhi $t4 #reminder
	mflo $t3 #quotient
	addi $t0,$t0,1
	beq $t4,$0,loop2
	bne $t4,$0,con2
loop3:
	slti $t2,$t0,32 #1or0
	beq $t2,$0,EXIT
	div $t3,$t1
	mfhi $t4 #reminder
	mflo $t3 #quotient
	addi $t0,$t0,1
	beq $t4,$0,con1
	bne $t4,$0,loop3
EXIT:
	addi $t5,$0,32
	sw $s1,var1
	sw $s2,var2
	sw $s3,var3
	sw $t0,var4
jr $ra
