--http://projecteuler.net/problem=10

local function is_pri(x)
  local i, v
  
  for i, v in ipairs(a) do
    if 0 == x % v then
      return false
    end
  end
  return true
end

a = {2}
a[500000]=0
local i = 3
local sum = 2

while i < 2000000 do
    if is_pri(i) then
        --print(i)
        table.insert(a, i)
        sum = sum + i
    end
    i = i + 2
end

print(sum)
