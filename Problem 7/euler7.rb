def isPrime(num)
	for i in 2..Math.sqrt(num)
		if (num % i == 0)
			return false
		end
	end
	return true
end


numPrimes = 1
lastNum = 2
while numPrimes < 10001
	lastNum += 1
	if (isPrime(lastNum))
		numPrimes += 1
	end
end

puts lastNum
