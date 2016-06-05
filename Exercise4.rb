a = [1,2,3]
b = [:azul,:rojo,:amarillo]
c = ["Tacos","Quesadillas","Hamburguesas"]

array = Array.new
array = []

array = a.map do |elem|
	[elem.to_s, b[elem-1].to_s, c[elem-1].to_s]
end

print array.flatten
