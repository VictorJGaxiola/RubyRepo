a = [1,2,3,[1,2,3],4,5,6,[1,2,3]]

sum = Array.new
sum = []

a.each do |i|
	if (i.class == Array)
		b = 0
		for j in 0..(i.length-1)
			b += i[j]
		end
		sum << b
	end
end

print sum
puts " "