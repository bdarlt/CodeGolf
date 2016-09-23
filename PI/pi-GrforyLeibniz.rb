

# easy to understand, but increadably bad convergence rate
# two million interations gets you roughly as good as 355/113
# but of course that approximation costs far less CPU
def piGregoryLeibniz(interations=2000000)
	pi = 0
	numerator = 4
	denominator = 1
	sign = 1.0
	fakePi = 355/113 # this is good to six decimal places. Our series should *really* do better than that :)
	#while (pi-fakePi).abs > 0.0005 do
		(1..interations).each {
			pi = pi + (sign * numerator/denominator)
			sign = sign * -1
			denominator = denominator + 2
		}
		
	#end
	return pi
end

# converges quite respectively
# At 3000 interations it matchs PI to 13 decimal places
def piNilakantha(interations=20)
	pi = 3
	numerator = 4
	denominator = [2,3,4]
	sign = 1.0
	fakePi = 355/113 # this is good to six decimal places. Our series should *really* do better than that :)
	#while (pi-fakePi).abs > 0.0005 do
		(1..interations).each {
			pi = pi + (sign * numerator/(denominator[0]*denominator[1]*denominator[2]))
			sign = sign * -1
			denominator.map!{|x| x+2} 
		}
		
	#end
	return pi
end

puts piNilakantha(30000)