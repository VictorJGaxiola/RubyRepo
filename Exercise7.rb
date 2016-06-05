randomNums = Array.new
randomNums = []

10.times do
	randomNums << (rand*100).to_i
end

acum = 0
randomNums.each do |i|
	acum += i
end

puts "Promedio de: "+ randomNums.to_s + " es igual a " + (acum.to_f/randomNums.length).to_s