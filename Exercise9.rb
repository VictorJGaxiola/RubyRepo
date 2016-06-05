a = [1,2,1,3,2,1,4,7,1,2]

c=0
a.each do |i|
	if(i == c)
		puts "El elemento "+i.to_s+" esta en la posición "+c.to_s
	end
	c+=1
end