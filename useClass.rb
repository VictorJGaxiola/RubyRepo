require './ArraysAndHashes'

system('clear')
obj = ArraysAndHashes.new
print "Proporcione un numero de ejercicio (nivel 1): "
opc = gets.chomp
obj.menuList=opc.to_i