# the spigot algorythm to calculate pi to a certain number of digits


def piSpiggot(digits=130)
	a=[]
	n = 10 * digits/3 +1
	output=""
	#n=13
	# make an array of 2s
	n.times {a.push(2)}

	(1..digits).each {
		carryOver =0
		q=0

		a.map!{|x| x*10}
		(1..n).each {|j| i = n-j
			# the algorythm originally assumes i is an array that starts at 1, but ours starts at 0
			# we fudge it back here
			den = 2*(i+1)-1
			den = 10 if i == 0
			q, r = (carryOver+a[i]).divmod(den)
			a[i]= r
			carryOver = q*i
			# this isn't done yet
			#puts "#{i}/#{den} #{a[i]}  #{q} #{r} #{carryOver}"
		}
		output.concat(q.to_s)
		output.concat('.') if output.size == 1
	}
	return output
end
puts piSpiggot(200)