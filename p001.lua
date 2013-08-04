--http://projecteuler.net/problem=1

function sumof(a, b)
  n = math.floor(b / a)
  return (a * (1 + n) * n / 2)
end

return sumof(3, 999) + sumof(5, 999) - sumof(15, 999)
