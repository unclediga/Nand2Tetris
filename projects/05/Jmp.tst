// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/And.tst

load Jmp.hdl,
output-file Jmp.out,
//compare-to And.cmp,
output-list bit1%B2.1.1 eqz%B1.1.1 gtz%B1.1.1 ltz%B1.1.1 zr%B1.1.1 ng%B1.1.1 out%B1.1.1;
set bit1 1,
set eqz 0,
set gtz 0,
set ltz 0,
set zr 0,
set ng 0,
eval,
output;


set eqz 1,
set gtz 1,
set ltz 1,
set zr 0,
set ng 0,
eval,
output;

set eqz 1,
set gtz 0,
set ltz 0,
set zr 1,
set ng 0,
eval,
output;

set eqz 0,
set gtz 0,
set ltz 0,
set zr 1,
set ng 0,
eval,
output;

set eqz 1,
set gtz 1,
set ltz 0,
set zr 1,
set ng 0,
eval,
output;


set eqz 0,
set gtz 1,
set ltz 0,
set zr 1,
set ng 0,
eval,
output;

set eqz 0,
set gtz 1,
set ltz 0,
set zr 0,
set ng 0,
eval,
output;

set eqz 0,
set gtz 1,
set ltz 0,
set zr 0,
set ng 1,
eval,
output;


set eqz 1,
set gtz 0,
set ltz 1,
set zr 1,
set ng 0,
eval,
output;


set eqz 0,
set gtz 0,
set ltz 1,
set zr 1,
set ng 0,
eval,
output;

set eqz 0,
set gtz 0,
set ltz 1,
set zr 0,
set ng 0,
eval,
output;

set eqz 0,
set gtz 0,
set ltz 1,
set zr 0,
set ng 1,
eval,
output;


set bit1 0,
set eqz 1,
set gtz 1,
set ltz 1,
set zr 0,
set ng 0,
eval,
output;

set bit1 0,
set eqz 1,
set gtz 0,
set ltz 0,
set zr 1,
set ng 0,
eval,
output;
