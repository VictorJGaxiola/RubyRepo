a = [1,2,3]
b = [:azul,:rojo,:amarillo]
c = ["Tacos","Quesadillas","Hamburguesas"]

a.each do |elem|
	print elem
	print " "
	print b[elem-1]
	print " "
	print c[elem-1]
	puts " "
end