sum = 1000

for i in 1..sum
	for j in i..sum
		if (i**2 + j**2 > (sum-i-j)**2)
			break
		end
		if (i**2 + j**2 == (sum-i-j)**2)
			puts "#{i} #{j} #{(sum-i-j)}"
			puts "product: #{i*j*(sum-i-j)}"
			exit
		end
	end
end
