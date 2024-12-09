BEGIN{
    ltz = 4;
    gtz = 8;
    eqz = 16;
    zr = 2;
    ng = 1;
    bit1 = 32;
    out = 0;

print "load Jmp.hdl,";
print "output-file Jmp.out,";
print "compare-to Jmp.cmp,";
print "output-list bit1%B2.1.1 eqz%B1.1.1 gtz%B1.1.1 ltz%B1.1.1 zr%B1.1.1 ng%B1.1.1 out%B1.1.1;";	

    m = 0x3f;
    while(m > -1) {
    	prn(m);
    	m = m - 1;
    }
/*    print bit(0x3f,1); */
}

function prn(w){
         /* |bit1|eqz|gtz|ltz|zr |ng |out| */

print "set bit1 " bit(w,bit1) ",";
print "set eqz " bit(w,eqz) ",";
print "set gtz " bit(w,gtz) ",";
print "set ltz " bit(w,ltz) ",";
print "set zr " bit(w,zr) ",";
print "set ng " bit(w,ng) ",";
print "eval, output;\n";

}

function bit(w,mask){
	if (and(w,mask) > 0) return 1; 
	else return 0;
}
