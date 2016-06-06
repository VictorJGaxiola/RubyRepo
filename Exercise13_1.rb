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

feriados = ["Miercoles 5", "Viernes 7", "Jueves 13", "Martes 18", "Viernes 28"]

mes = Array.new
mes = llenaMes

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


