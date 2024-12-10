BEGIN{
    ltz = 4;
    gtz = 8;
    eqz = 16;
    zr = 2;
    ng = 1;
    bit1 = 32;
    out = 0;


    print "|bit1|eqz|gtz|ltz|zr |ng |out|"
    m = 0x3f;
    while(m > -1) {
    	prn(m);
    	m = m - 1;
    }
/*    print bit(0x3f,1); */
}

function prn(w){
         /* |bit1|eqz|gtz|ltz|zr |ng |out| */

   out = 0;
   if (bit(w,bit1) == 1) {
     if (bit(w,eqz) == 1 && bit(w,ltz) == 1 && bit(w,gtz) == 1)     out = 1;   
     else if (bit(w,eqz) == 1 && bit(w,zr) == 1)                    out = 1;
     else if (bit(w,ltz) == 1  && bit(w,ng) == 1 && bit(w,zr) == 0) out = 1;
     else if (bit(w,gtz) == 1  && bit(w,ng) == 0 && bit(w,zr) == 0) out = 1; 
     else if ((bit(w,zr) == 1) && (bit(w,ng) == 1))                 out = 0;     
   }  


#|bit1|eqz|gtz|ltz|zr |ng |out|
#|  1 | 1 | 1 | 0 | 1 | 1 | 1 (Jmp.cmp->0) |  

   printf "|%3d | %1d | %1d | %1d | %1d | %1d | %1d |\n" , bit(w,bit1), bit(w,eqz), bit(w,gtz),bit(w,ltz), bit(w,zr), bit(w,ng), out;
    
	
}

function bit(w,mask){
	if (and(w,mask) > 0) return 1; 
	else return 0;
}
