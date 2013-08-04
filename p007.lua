--http://projecteuler.net/problem=7

--TODO: is_pri sucks
function is_pri(x)
  local i
  for i = 2, x - 1 do
    if 0 == x % i then
      return false
    end
  end
  return true
end

local a = {2}
local i = 3

while table.getn(a) < 10001 do
  if is_pri(i) then
    --print(i)
    table.insert(a, i)
  end
  i = i + 2
end

print(a[10001])
