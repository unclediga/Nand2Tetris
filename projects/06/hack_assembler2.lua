p = require("parser")
require("lfs")
require("code")
require("asm")

assert(#arg == 1, 'parameter "file name"  is missing')

if #arg ~= 1 then 
  print "Oppa!"
  os.exit(false)
elseif lfs.attributes(arg[1]) then
  print("attrs ")
  for k,v in pairs(lfs.attributes(arg[1])) do
      print(k .. v)
  end    
  
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
