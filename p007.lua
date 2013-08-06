--http://projecteuler.net/problem=7

local function is_pri(x)
  local i, v
  
  for i, v in pairs(a) do
    if 0 == x % v then
      return false
    end
  end
  return true
end

a = {2}
local i = 3

while table.getn(a) < 10001 do
  if is_pri(i) then
    --print(i)
    table.insert(a, i)
  end
  i = i + 2
end

print(a[10001])
