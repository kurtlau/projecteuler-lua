--http://projecteuler.net/problem=2

local function fib_gen(n)
  return coroutine.wrap(function ()
    local a, b = 1, 2
    while a < n do 
      coroutine.yield(a)
      a, b = b, a + b
    end
  end)
end

local sum = 0
local i

for i in fib_gen(4000000) do
  if (0 == i % 2) then
    sum = sum + i
  end
end

print(sum)
