def RunLength(str)
  o = ''
  y = nil
  count = 0
  str.chars do |x|
    if (x != y and ! y.nil?) 
      o = o + "#{count}y"
    end
    count = count + 1
    y = x
  end
  # code goes here
  return o 
    	
end