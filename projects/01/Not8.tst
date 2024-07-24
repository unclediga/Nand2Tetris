// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/01/Not16.tst

load Not8.hdl,
output-file Not8.out,
//compare-to Not16.cmp,
output-list in%B1.8.1 out%B1.8.1;

set in %B00000000, eval, output;
set in %B00000001, eval, output;
set in %B00000010, eval, output;
set in %B00000011, eval, output;
set in %B00000100, eval, output;
set in %B00000101, eval, output;
set in %B00000110, eval, output;
set in %B00000111, eval, output;
set in %B00001000, eval, output;
set in %B00001001, eval, output;

set in %B11111111, eval, output;

set in %B10101010, eval, output;

set in %B00111100, eval, output;

set in %B00010010, eval, output;