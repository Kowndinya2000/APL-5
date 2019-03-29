.data
   a: .word 1, 2, 3, 4
lena: .word 4
   a1: .word 5, 6, 7, 8
lenb: .word 4
.text
main:
la $t0,a # t0 = base adress of a array
la $t1,a1 # # t0 = base adress of a array
lw $s0,len
addu $t2,$0,$0
loop:
beq $t2,$s0,exit
sll $t3,$t2,2
addu $t4,$t3,$t0
lw $s1,($t4)
addu $t3,$t3,$t1
lw $s2,($t3)
add $t5,$0,$s1
add $s1,$0,$s2
add $s2,$0,$t5
addi $t2,$t2,1
sw $s2,($t3)
sw $s1,($t4)
j loop
exit:
j $ra
