.data
var1: .word 10
var2: .word 10
var3: .word 10
var4: .word 10
var5: .word 10
var6: .word 10
var7: .word 10
var8: .word 10
var9: .word 0
var10: .word 0
var11: .word 0
var12: .word 0
overflow: .word 0
.text
main:
lw $s1,var1
lw $s2,var5
lw $s3,var9
addi $s0,$0,1
sll $s0,$s0,31  ##s0 = 1<<31
and $t1,$s1,$s0 #t1 = a
and $t2,$s2,$s0 #t2 = b
addu $s3,$s1,$s2 #s3 = sum
and $t3,$s3,$s0 #t3 = s
and $t0,$t1,$t2 #t0 = Cout
xor $t4,$t1,$t2 #t4 = a xor b
nor $t5,$0,$t3  #t5 = not s
and $t4,$t4,$t5
or $t0,$t0,$t4  #t0 = Cout
srl $t0,$t0,31
sw $s1,var1
sw $s2,var5
sw $s3,var9
lw $s1,var2
lw $s2,var6
lw $s3,var10
and $t1,$s1,$s0 #t1 = a
and $t2,$s2,$s0 #t2 = b
addu $s3,$s1,$t0 #sum = var2 + carry
and $t3,$s3,$s0 #t3 = s
nor $t5,$0,$t3  #t5 = not s
and $t0,$t1,$t5 #caary1
addu $s3,$s3,$s2 #s3 = sum + var6
and $t7,$s3,$s0 #t7 = snew#
and $t6,$t3,$t2 #t6 = Cout2
xor $t4,$t3,$t2 #t4 = s3old xor b
nor $t5,$0,$t7  #t5 = not snew
and $t4,$t4,$t5 #t
or $t6,$t6,$t4
addu $t0,$t0,$t6 #t0 = Cout
srl $t0,$t0,31
sw $s1,var2
sw $s2,var6
sw $s3,var10
lw $s1,var3
lw $s2,var7
lw $s3,var11
and $t1,$s1,$s0 #t1 = a
and $t2,$s2,$s0 #t2 = b
addu $s3,$s1,$t0 #sum = var2 + carry
and $t3,$s3,$s0 #t3 = s
nor $t5,$0,$t3  #t5 = not s
and $t0,$t1,$t5 #caary1
addu $s3,$s3,$s2 #s3 = sum + var6
and $t7,$s3,$s0 #t7 = snew#
and $t6,$t3,$t2 #t6 = Cout2
xor $t4,$t3,$t2 #t4 = s3old xor b
nor $t5,$0,$t7  #t5 = not snew
and $t4,$t4,$t5 #t
or $t6,$t6,$t4
addu $t0,$t0,$t6 #t0 = Cout
srl $t0,$t0,31
sw $s1,var3
sw $s2,var7
sw $s3,var11
lw $s1,var4
lw $s2,var8
lw $s3,var12
lw $s7,overflow
and $t1,$s1,$s0 #t1 = a
and $t2,$s2,$s0 #t2 = b
addu $s3,$s1,$t0 #sum = var2 + carry
and $t3,$s3,$s0 #t3 = s
nor $t5,$0,$t3  #t5 = not s
and $t0,$t1,$t5 #caary1
addu $s3,$s3,$s2 #s3 = sum + var6
and $t7,$s3,$s0 #t7 = snew#
and $t6,$t3,$t2 #t6 = Cout2
xor $t4,$t3,$t2 #t4 = s3old xor b
nor $t5,$0,$t7  #t5 = not snew
and $t4,$t4,$t5 #t
or $t6,$t6,$t4
addu $t0,$t0,$t6 #t0 = Cout
and $t8,$t3,$t2
and $t8,$t8,$t5
nor $t3,$0,$t3
nor $t2,$0,$t2
and $t9,$t2,$t3
and $t9,$t9,$t7
addu $s7,$t9,$t8
srl $s7,$s7,31
srl $t0,$t0,31
sw $s7,overflow
sw $s1,var4
sw $s2,var8
sw $s3,var12
j $ra
