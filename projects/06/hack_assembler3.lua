--p = require("parser")
--require("lfs")
require("code")
require("asm")

assert(#arg == 1, 'parameter "file name"  is missing')
--assert(lfs.attributes(arg[1]), 'file ['.. arg[1] ..'] not exists')

local hIn = io.open(arg[1], "r")
local hOut = io.open(arg[1]..".bin", "w+")

if hIn ~=nil and hOut ~=nil then


  local line =  hIn:read()
  local ch = nil
  local ch1 = nil
  while line ~= nil do
    local line2 = ""
    while line ~= nil do

       ch = line:sub(1,1)
       line = line:sub(2)
       line2 = ""
       print("ch = " .. ch)
       if ch == nil then break
       elseif ch == '/' and ch1 == '/' then
            break
        end
        line2 = line2 .. ch
        ch1 = ch
   end 
  
    hOut:write(line2)
    hOut:write("\n")
    line =  hIn:read("l")
  end
  hIn:close()
  hOut:close()
end




