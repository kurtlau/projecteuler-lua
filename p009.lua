--http://projecteuler.net/problem=9

function triplet()
  local a,b

  for a=1, 998 do
    for b=1, 999 - a do
      if a^2 + b^2 == (1000 - a - b)^2 then
        return a * b * (1000 - a - b)
      end
    end
  end
end

print(triplet())