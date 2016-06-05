a = [1,2,3]
b = [:azul,:rojo,:amarillo]
c = ["Tacos","Quesadillas","Hamburguesas"]

array = Array.new
array = []

array = a.map do |elem|
	[elem, b[elem-1], c[elem-1]]
end

print array.flatten
