--http://projecteuler.net/problem=1

local function sumof(a, b)
  local n = math.floor(b / a)
  return (a * (1 + n) * n / 2)
end

print (sumof(3, 999) + sumof(5, 999) - sumof(15, 999))
