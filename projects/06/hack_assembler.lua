p = require("parser")
require("code")
require("asm")

if #arg ~= 1 then 
  print "Oppa!"
  os.exit(false)
else 
  for i=0,#arg do 
    print (string.format("arg[%d]=[%s]", i, arg[i]) )
  end
end

io.input(arg[1])
local s = io.read("*l")
while (s)  do
  --local s = io.read("*l")  
  --if s == nil then break; end;
  print(s)
  s = io.read("*l")  
end

p.symbol()
