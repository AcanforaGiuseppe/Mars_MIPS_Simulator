- 1° code
li $t8, 0xdeadbeef
addiu $t3, $t4, 5
loop:
addiu $t1, $t1, 2
j loop
nop

- 2° code
li $t0, 0x10010000
li $t1, 0xdead0eef
sw $t1, 0($t0)
lw $t3, 0($t0)

- 3° code
li $t0, 0x10010000
loop:
li $t5, 0x00ff0000
sw $t5, 0($t0)
li $t5, 0x0000ffff
sw $t5, 4($t0)
lw $t1, 0($t0)
lw $t1, 4($t0)
lw $t1, 8($t0)
lw $t1, 12($t0)
lw $t1, 16($t0)
lw $t1, 0($t0)
lw $t1, 4($t0)
lw $t1, 8($t0)
lw $t1, 12($t0)
lw $t1, 0($t0)
lw $t1, 4($t0)
lw $t1, 8($t0)
lw $t1, 12($t0)
j loop
nop