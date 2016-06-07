=begin
Pregunta 16
Escribir un hash con el menu de un restaurant, la llave es el nombre del plato y el valor es el precio de
este.

restaurant_menu = {"Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2}

1. Obtener el plato mas caro
2. Obtener el plato mas barato
3. Sacar el promedio del valor de los platos
4. Crear un arreglo con solo los nombres de los platos
5. Crear un arreglo con solo los valores de los platos
6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).
7. Dar descuento del 20% para los platos que tengan un nombre de mas 1 una palabra.
=end

menu = {
	"Chiles en nogada" => 78,
	"Sopes" => 13,
	"Caldo Michi" => 45,
	"Soda" => 10,
	"Caldo de queso con papas" => 35,
	"Cafe" => 8,
	"Machaca con huevo" => 33,
	"Champurrado" => 12
}

def platilloMasCaro(menu)
	plato_max="Z"
	costo_max=-1
	plato=""
	costo=0
	c=0
	menu.each do |clave, valor|
		plato = clave
		costo = valor
		if(plato!="" && costo>0)
			if(costo_max>costo)
				plato_max=plato_max
				costo_max=costo_max
			else
				plato_max=plato
				costo_max=costo
				plato=""
				costo=0
			end
		end
	end
	
	"El platillo mas caro del menu es "+plato_max+" con costo $"+costo_max.to_s
end

def platilloMasBarato(menu)
	plato_min="A"
	costo_min=9999
	plato=""
	costo=0
	c=0
	menu.each do |clave, valor|
		plato = clave
		costo = valor
		if(plato!="" && costo>0)
			if(costo_min<costo)
				plato_min=plato_min
				costo_min=costo_min
			else
				plato_min=plato
				costo_min=costo
				plato=""
				costo=0
			end
		end
	end
	
	"El platillo mas barato del menu es "+plato_min+" con costo $"+costo_min.to_s
end

def promedioCostoPlatillos(menu)
	costo=0
	c=0
	menu.each do |clave, valor|
		#plato = clave
		costo = costo + valor
		c+=1
	end

	"El promedio de los costos es $"+(costo.to_f/c).to_s
end

def listaDePlatillos(menu)
	platos = []
	platos = menu.map do |clave, valor|
		clave
	end
	platos
end

def costosDePlatillos(menu)
	costos = []
	costos = menu.map do |clave, valor|
		valor
	end
	costos
end

def costosMasIVA(menu)
	menu.each do |clave, valor|
		menu[clave] = valor*1.19
	end
	menu
end

def aplicaDescuento(menu)
	menu.each do |clave, valor|
		if(clave.split(" ").length>1)
			menu[clave] = valor*0.8
		end
	end
	menu
end

puts platilloMasCaro(menu)
puts " "
puts platilloMasBarato(menu)
puts " "
puts promedioCostoPlatillos(menu)
puts " "
print listaDePlatillos(menu)
puts " "
print costosDePlatillos(menu)
puts " "
puts " "
puts costosMasIVA(menu)
puts " "
puts aplicaDescuento(menu)
