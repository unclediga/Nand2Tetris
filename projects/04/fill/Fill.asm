// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.



(LOOP)
    @KBD
    D=M
    @FULL
    D;JNE

    @8192
    D=A
(KD)
    @SCREEN
    A=A+D
    M=0
    D=D-1
    @KD
    D;JGE
    @LOOP
    0;JMP
(FULL)
    @8192
    D=A
(KD1)
    @SCREEN
    A=A+D
    M=-1
    D=D-1
    @KD1
    D;JGE
    @LOOP
    0;JMP

