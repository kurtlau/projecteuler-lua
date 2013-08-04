--http://projecteuler.net/problem=6

function square_diff(n)
  return coroutine.wrap(function ()
    local i, j
    for i = 1, n - 1 do
      for j = i + 1, n do
        coroutine.yield(2 * i * j)
      end
    end
  end)
end

sum = 0

for i in square_diff(100) do
  --print(i)
  sum = sum + i
end

print(sum)
