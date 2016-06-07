class ArraysAndHashes
	def exercise1
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
	end


	def exercise2
		a = [1,2,3]
		b = [:azul,:rojo,:amarillo]
		c = ["Tacos","Quesadillas","Hamburguesas"]

		a.each do |elem|
			print elem
			print " "
			print b.reverse[elem-1]
			print " "
			print c[elem-1]
			puts " "
		end
	end


	def exercise3
		a = [1,2,3]
		b = [:azul,:rojo,:amarillo]
		c = ["Tacos","Quesadillas","Hamburguesas"]

		array = Array.new
		array = []

		array = a.map do |elem|
			[elem, b[elem-1], c[elem-1]]
		end

		array
	end


	def exercise4
		a = [1,2,3]
		b = [:azul,:rojo,:amarillo]
		c = ["Tacos","Quesadillas","Hamburguesas"]

		array = Array.new
		array = []

		array = a.map do |elem|
			[elem.to_s, b[elem-1].to_s, c[elem-1].to_s]
		end

		array
	end


	def exercise5
		numeros = [1,2,3,0,1,2,2,1,2,1,2,0,3] 
		colores = [:azul, :verde, :amarillo]

		arreglo = Array.new
		arreglo = []

		arreglo = numeros.map do |i|
			(i < colores.length) ? colores[i] : nil
		end

		arreglo
	end


	def exercise6
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
	end


	def exercise7
		randomNums = Array.new
		randomNums = []

		10.times do
			randomNums << (rand*100).to_i
		end

		acum = 0
		randomNums.each do |i|
			acum += i
		end

		"El promedio de: "+ randomNums.to_s + " es igual a " + (acum.to_f/randomNums.length).to_s
	end


	def exercise9
		a = [1,2,1,3,2,1,4,7,1,2]

		c=0
		a.each do |i|
			if(i == c)
				puts "El elemento "+i.to_s+" esta en la posición "+c.to_s
			end
			c+=1
		end
	end


	def exercise10
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

		sum
	end


	def llenaMes 
		diaSem=1
		mes = []
		for dia in 3..31
			case diaSem
			when 1
				mes.push("Lunes "+dia.to_s)
				diaSem+=1
			when 2 
				mes.push("Martes "+dia.to_s)
				diaSem+=1
			when 3 
				mes.push("Miercoles "+dia.to_s)
				diaSem+=1
			when 4 
				mes.push("Jueves "+dia.to_s)
				diaSem+=1
			when 5 
				mes.push("Viernes "+dia.to_s)
				diaSem+=1
			when 6 
				mes.push("Sabado "+dia.to_s)
				diaSem+=1
			when 7 
				mes.push("Domingo "+dia.to_s)
				diaSem = 1
			end
		end

		mes
	end
	def exercise13_1(mes, feriados)
		mes.each do |i|
			c = feriados.length
			feriados.each do |j|
				if(i != j)
					c-=1
					if(c==0)
						print i+", "
					end
					next
				end
			end
		end
	end
	def exercise13_2(mes, feriados)
		mes.each do |i|
			c = feriados.length
			feriados.each do |j|
				if(i != j)
					c-=1
					if(c==0 && (i[0..5]!="Sabado" && i[0..6]!="Domingo"))
						print i+", "
					end
					next
				end
			end
		end
	end

	def exercise13
		feriados = ["Miercoles 5", "Viernes 7", "Jueves 13", "Martes 18", "Viernes 28"]

		mes = Array.new
		mes = llenaMes
		puts "Mes sin dias feriados"
		exercise13_1(mes, feriados)
		puts"\n\n"
		puts "Mes sin dias feriados ni fines de semana"
		exercise13_2(mes, feriados)
	end


	def promedio(alumnos)
	c=0
	edades=0
	alumnos.each do |h|
		h.each do |clave, valor|
			if(clave.to_s=="edad")
				edades+=valor
				c+=1
			end
		end
	end
	print "La edad promedio del curso es: "
	printf("%3.2f",edades.to_f/c)
	end
	def alumnoMenor(alumnos)
	nombre_min="A"
	edad_min=9999
	nombre=""
	edad=0
	alumnos.each do |h|
		h.each do |clave, valor|
			if(clave.to_s=="nombre")
				nombre=valor
			end
			if(clave.to_s=="edad")
				edad=valor
			end
			if(nombre!="" && edad>0)
				if(edad_min<edad)
					nombre_min=nombre_min
					edad_min=edad_min
				else
					nombre_min=nombre
					edad_min=edad
					nombre=""
					edad=0
				end
			end
			
		end
	end
	"El alumno menor es "+nombre_min+" con "+edad_min.to_s+" años"
	end

	def exercise15
		alumnos = [{nombre:"Karina", edad:18},{nombre:"Alfredo", edad:15},{nombre:"Raquel", edad:21},{nombre:"Pablo", edad:29},{nombre:"Yeshvanth", edad:19},{nombre:"Marie", edad:14}]
		promedio(alumnos)
		puts " "
		puts alumnoMenor(alumnos)
	end


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

	def exercise16
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
		puts costosMasIVA(menu)
		puts " "
		puts aplicaDescuento(menu)
	end


	def menuList=(opc)
		system('clear')
		case opc
			when 1
				exercise1
			when 2
				exercise2
			when 3
				print exercise3.flatten
				puts " "
			when 4
				print exercise4.flatten
				puts " "
			when 5
				print exercise5
				puts " "
			when 6
				exercise6
			when 7
				puts exercise7
			when 9
				exercise9
			when 10
				print exercise10
				puts" "
			when 13
				exercise13
			when 15
				exercise15
			when 16
				exercise16
			else
				puts "Opción incorrecta"
		end
	end
end