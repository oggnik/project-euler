arr = []

for i in 100..999
	for j in 100..999
		num = i * j
		num_string = num.to_s
		if num_string == num_string.reverse
			arr.push(num)
		end
	end
end

puts arr.sort
