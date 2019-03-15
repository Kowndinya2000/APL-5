.text
main:
addiu $s0,$0,50
addiu $s1,$0,40
mult $s0,$s1
mfhi $s0        # msb 32
mflo $s1        # lsb 32
j $ra
