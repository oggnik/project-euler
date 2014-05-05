num = 600851475143
#num = 10

for i in range(int(num ** .5), 0, -1):
	if (num % i == 0):
		isPrime = True
		for j in range(2, i):
			if (i % j == 0):
				isPrime = False
		if (isPrime):
			print(i)
