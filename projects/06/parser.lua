local  lines = nil
local curline = nil

p = {
 
 -- (константы) Типы команд
 A_INSTRUCTION = 1,
 C_INSTRUCTION = 2,
 L_INSTRUCTION = 3,
  
hasMoreLines = function () 
  --[[  Булево значение   (boolean) Есть ли еще строки на входе? ]]
  
  while true do
    curline = lines() 
    if curline == nil then
        return false
    if curline:match(''
    
  return 
end,


--[[При необходимости пропускает пробелы и разрывы.Читает со входа следующую команду и делает ее текущей.
Эту рутину следует вызывать, только если hasMoreLines равно true. Изначально текущей команды нет]]

advance = function () 

end,

setSource = function (fn)
  
  lines = fn

end
}

--[[ Возвращает тип текущей команды: 
  A_INSTRUCTION для @xxx, где xxx — либо десятичное число, либо символ.
  C_INSTRUCTION для dest=comp;jump.
  L_INSTRUCTION для (xxx), где xxx — символ  ]]

function p.instructionType()  
  return curline 
end

--[[  Возвращает символическую часть jump текущей С-команды (8 вариантов). 
Следует вызывать, только если instructionType равен C_INSTRUCTION  ]]
function p.jump()  end
--[[Возвращает символическую часть comp текущей С-команды (28 вариантов). 
Следует вызывать, только если instructionType равен C_INSTRUCTION  ]]
function p.comp()  end  

--[[
Возвращает символическую
часть dest текущей С-команды
(8 вариантов). Следует вызывать,
только если instructionType
равен C_INSTRUCTION
]]
function p.dest()  end  

--[[
Если текущая команда (xxx), воз-
вращает символ xxx. Если текущая
команда @xxx, возвращает сим-
вол или десятичное значение xxx
(в виде строки).
Следует вызывать, только если
instructionType
равен A_INSTRUCTION или
L_INSTRUCTION
]]
function p.symbol()  end  


return p
