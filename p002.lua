--http://projecteuler.net/problem=2

function fib_even_gen(n)
  return coroutine.wrap(function ()
    local a, b = 1, 2
    while a < n do 
      coroutine.yield(a)
      a, b = b, a + b
    end
  end)
end

sum = 0

for i in fib_even_gen(4000000) do
  if (0 == i % 2) then
    sum = sum + i
  end
end

print(sum)
