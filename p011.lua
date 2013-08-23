--http://projecteuler.net/problem=11

local i,sum = 0, 0

i = io.read("*number")

while i do
    sum = sum + i
    i = io.read("*number")
end

print(sum)
