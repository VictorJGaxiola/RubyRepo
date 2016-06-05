randomNums = Array.new
randomNums = []

20.times do
	randomNums << (rand*100).to_i
end

print randomNums
puts " "
randomNums.each do |i|
	if (i > 10) 
		print i
		print " "
	end
end
puts " "