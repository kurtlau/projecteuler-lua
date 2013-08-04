--http://projecteuler.net/problem=3

function pri_gen(n)
  return coroutine.wrap(function ()
    local a = 2
    while a <= math.ceil(math.sqrt(n)) do
      if 0 == n % a then
        coroutine.yield(a)
        n = n / a
      end
      a = a + 1
    end
    if n ~= 1 then
      coroutine.yield(n)
    end
  end)
end

re = -1

for i in pri_gen(600851475143) do
  re = math.max(re, i)
end

print(re)
