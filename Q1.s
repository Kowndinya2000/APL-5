.text
main:
addiu $s0,$0,5
addiu $s0,$0,4
mult $s0,$s1
mfhi $s0        # msb 32
mflo $s1        # lsb 32
j $ra
