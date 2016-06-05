numeros = [1,2,3,0,1,2,2,1,2,1,2,0,3] 
colores = [:azul, :verde, :amarillo]

arreglo = Array.new
arreglo = []

arreglo = numeros.map do |i|
	(i < colores.length) ? colores[i] : nil
end

print arreglo