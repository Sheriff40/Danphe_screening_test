def greatest_number(*x)
	greatest_number = x[0]
	x.each do |num|
		if num > greatest_number
			greatest_number = num
		end	
	end
	return greatest_number
end

puts(greatest_number(1,2,3,5,2))
