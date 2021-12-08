// Postavljanje u memoriju
@6
D = A
@R0
M = D

@9
D = A
@R1
M = D

@2
D = A
@R2
M = D

@4
D = A
@R3
M = D

// Ako je R1 > R0
@R0
D = M
@R4
M = D

@R1
D = D - M

@M1
D; JGT
@R1
D = M
@R4
M = D
(M1)

// Ako je R1 > R2
@R2
D = D - M

@M2
D; JGT
@R2
D = M
@R4
M = D
(M2)

// Ako je R2 > R3
@R3
D = D - M

@M3
D; JGT
@R3
D = M
@R4
M = D
(M3)

// Zavrsi program
(END_PROG)
@END_PROG
0;JMP