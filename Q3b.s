.data
   a: .word 'a', 'a', 'a', 'a'
lena: .word 4
   a1: .word 'b', 'b', 'b', 'b'
lenb: .word 4
.text
main:
la $t0,a # t0 = base adress of a array
la $t1,a1 # # t0 = base adress of a array
lw $s0,lena
addu $t2,$0,$0
loop:
beq $t2,$s0,exit
addu $t3,$t2,$0
addu $t4,$t3,$t0
lb $s1,($t4)
addu $t3,$t3,$t1
lb $s2,($t3)
add $t5,$0,$s1
add $s1,$0,$s2
add $s2,$0,$t5
addi $t2,$t2,1
sb $s2,($t3)
sb $s1,($t4)
j loop
exit:
j $ra
