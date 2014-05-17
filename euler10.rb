max = 2000000
#max = 10

#create array of booleans to show which are true
primes = Array.new(max + 1, true)

index = 2

while (index < max)
	if (primes[index])
		(2*index..max+1).step(index).map do |i|
			primes[i] = false
		end
	end
	index += 1
end

sum = 0
primes.drop(2).each_with_index do |n, i|
	if (n)
		sum += i+2
	end
end

puts primes.inspect
puts sum
