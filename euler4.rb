arr = []

for i in 999.downto(100)
	for j in 999.downto(100)
		num = i * j
		num_string = num.to_s
		if num_string == num_string.reverse
			arr.push(num)
		end
	end
end

puts arr.max
