#Se tiene un arreglo de alumnos, cada alumno es un hash
#Calcular la edad promedio del curso
#Encontrar al alumno más joven del curso

alumnos = [{nombre:"Karina", edad:18},{nombre:"Alfredo", edad:15},{nombre:"Raquel", edad:21},{nombre:"Pablo", edad:29},{nombre:"Yeshvanth", edad:19},{nombre:"Marie", edad:14}]

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
	puts " "
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
	puts "El alumno menor es "+nombre_min+" con "+edad_min.to_s+" años"
end

promedio(alumnos)
alumnoMenor(alumnos)
