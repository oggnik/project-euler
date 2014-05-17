for k in 1000.downto(1)
	for i in 1..k
		for j in i..k
			if (i**2 + j**2 > k**2)
				break
			end
			if (i**2 + j**2 == k**2)
				if (i + j + k == 1000)
					puts "#{i} #{j} #{k}"
					puts "product: #{i*j*k}"
					exit
				end
			end
		end
	end
end
