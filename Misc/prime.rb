# a dirty prime number detector
# I'll be damned if I'm implementing a fancy algorithm for no reason

def isPrime(x)
	return 'false' if  x.nil? || !(x.respond_to?(:%) && x.respond_to?(:div)) # Not nil, and have a integer divisor and modulos 
													# (could be crap for this method" you say. Yep. 
													#   If you make a div and % method for Strings and pass it to isPrime, 
													#	you deserve what you get
	return 'false' if x<2 # Maybe 1 is prime, maybe not. I'm calling it not. Zero and negative numbers are beyond my caring
	return 'true' if x == 2 # cause I don't want to deal with the edge case
	min = 1
	loop do
		min += 1
		max = x.div(min)
		#puts "Min: #{min}\tMax: #{max}"
		return 'true' if max==1 || min>max 
		return 'false' if x%min == 0
	end
	'false'
end

isPrime 1234567