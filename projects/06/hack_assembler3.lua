--p = require("parser")
--require("lfs")
require("code")
require("asm")

assert(#arg == 1, 'parameter "file name"  is missing')
--assert(lfs.attributes(arg[1]), 'file ['.. arg[1] ..'] not exists')

local hIn = io.open(arg[1], "r")
local hOut = io.open(arg[1]..".bin", "w+")
if hIn == nil and hOut == nil then
  return -1
end  
local line =  hIn:read()
local ch = nil
local ch1 = nil
while line ~= nil do
    print("line => " .. line)
    local line2 = ""
    local i = 1
    if #line == 0 then goto continue1 end
    while i < #line + 1 do
        ch = line:sub(i,i)
        ch1 = line:sub(i+1,i+1)
        if ch == '/' then
          if ch1 == '/' then break end
        elseif ch == '@' then
           line2 = "0"..string.format("%x",line:sub(2))
           break 
        end
        line2 = line2 .. ch
        i = i + 1
    end
    ::continue1::
    if line2 ~= "" then 
      print("line2 => " .. line2 )
      hOut:write(line2)
      hOut:write("\n")
    end  
    line =  hIn:read("l")  
end
hIn:close()
hOut:close()