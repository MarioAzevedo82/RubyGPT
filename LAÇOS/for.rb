#O loop for é utilizado para iterar sobre um intervalo ou uma coleção de elementos.

# for i in 1..5
#   puts "o numero é #{i}"
# end

# imprimir pares no intervalo de 1 a 10
# for n in 1..10
#   if n % 2 == 0
#     puts n
#   end
# end

#Exemplo: Imprimir uma lista de nome

# nomes = ["Mario", "João", "Neildo", "André"]

# for nome in nomes
#   puts "Olá, #{nome}!"
# end

# Exemplo: Imprimir a tabuada de 3

# print "Digite um número para tabuada: "
# n = gets.chomp.to_i
# for i in 1..10
#   puts "#{n} x #{i} = #{n * i}"
# end

# Aqui está um exemplo de nível médio usando for para calcular a soma de 
# todos os números pares em um intervalo dado pelo usuário.

puts "Calcular a soma de todos os números pares num intervalo."
puts "Digite o início: "
inicio = gets.chomp.to_i
puts "Digite o fim: "
fim = gets.chomp.to_i
soma = 0

for i in inicio..fim
  if i % 2 == 0
    puts i
    soma += i
  end
end

puts "A soma de pares no intervalo de #{inicio} a #{fim} foi de #{soma}"