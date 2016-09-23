a = (1..100).to_a

a.each do |x| 
	str = ''
	if x%3 == 0
		str = "Fizz"
	end
	if x%5 == 0
		str = str+"Buzz"
	end
	if str == ''
		str = x
	end
	puts str
	
end