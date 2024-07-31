load Or16Way.hdl,
output-file Or16Way.out,
compare-to Or16Way.cmp,
output-list in%B1.16.1 out%B3.1.3;

set in %B0000000000000000,  // in = 0
eval,
output;

set in %B1111111111111111,  // in = -1
eval,
output;

set in %B0000000000000101,  // in = 5
eval,
output;

set in %B1111111111111011,  // in = -5
eval,
output;
