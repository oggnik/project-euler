sum = 0
square = 0
for i in 1..100
	sum += i**2;
	square += i
end
square **= 2

puts square - sum
