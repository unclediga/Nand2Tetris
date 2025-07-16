p = require("parser")
--require("lfs")
require("code")
require("asm")

assert(#arg == 1, 'parameter "file name"  is missing')
--assert(lfs.attributes(arg[1]), 'file ['.. arg[1] ..'] not exists')
 
io.input(arg[1])

p.setSource(io.lines())
while p.hasMoreLines() do
  p.advance()
  print(p.instructionType())  
end  
