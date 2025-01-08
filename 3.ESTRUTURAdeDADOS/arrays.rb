frutas = ["maça", "pera", 'banana']

# acessando elementos
puts frutas[1]

# adicionando elementos
frutas << 'uva'
frutas.concat(['Pitaya', 'limão'])
puts frutas.inspect

# Iterando com each

frutas.each do |fruta|
  puts fruta
end

puts "\n"
# PUSH -> o método push adiciona um ou mais elementos no final do array

numeros = [1, 2, 3]
numeros.push(4)
puts numeros.inspect

numeros.push(5, 6)
puts numeros.inspect

puts "\n"

# POP -> O método pop remove o último elemento do array e o retorna. 
# Se o array estiver vazio, retorna nil.

numeros = [1, 2, 3, 4, 5]
ultimo = numeros.pop
puts numeros.inspect
puts ultimo

removidos = numeros.pop(3)
puts numeros.inspect

puts "\n"

# EXEMPLO

frutas = []
puts frutas.inspect
frutas.push("maçã")
frutas.push("manga", "laranja")
puts frutas.inspect

ultima_fruta = frutas.pop
puts "Última fruta removida: #{ultima_fruta}"

puts frutas.inspect

puts "\n"
# DESAFIO

amigos = []
amigos.push("Vagner")
amigos.push("Vitor", "Fabinho", "Guimbinha")
puts amigos.inspect

ultimo_amigo = amigos.pop
puts "O último amigo removido foi o #{ultimo_amigo}"
puts amigos.inspect 

puts "\n"

# colegas = []
# puts "Quantos amigos você deseja adicionar: "
# qnt = gets.chomp.to_i

# qnt.times do |i|
#   puts "Digite o nome do amigo #{i + 1}"
#     colega = gets.chomp
#     colegas.push(colega)
# end

# puts "\nLista de amigos atual: "
# puts colegas.inspect

# puts "\nDeseja remover o ultimo colega da lista? (s/n)"
# resposta = gets.chomp.downcase

# if resposta == 's'
#   removido = colegas.pop
#   puts "\nO colega removido foi #{removido}"
# end

# puts "\nLista final de colegas:"
# puts colegas.inspect

# amigos = []
# puts "Digite quantos amigos deseja adicionar à lista: "
# quantidade = gets.chomp.to_i

# quantidade.times do |i|
#   puts "Digite nome do amigo #{i + 1}"
#     amigo = gets.chomp
#     amigos.push(amigo)
# end

# puts "A Lista de amigos é: "
# puts amigos.inspect

# UNSHIFT Adiciona elementos no início de um array.

times = ["Flamengo", "Vasco"]
times.unshift("Botafogo")
puts times.inspect
times.unshift("Bangu", "Macaé")
puts times.inspect
times.push("Fluminense")
puts times.inspect
primeiro_a_cair = times.shift
puts "O primeiro a cair foi o #{primeiro_a_cair}"

puts "\n"


# EACH 
# O método each é usado para iterar sobre os elementos de um array e 
# executar um bloco de código para cada elemento.
# Ele não retorna um novo array; apenas realiza operações sobre os elementos.

numeros = [1, 2, 3, 4, 5]
numeros.each do |numero|
  puts "O número é #{numero}"
end

# MAP
# O método map também percorre os elementos do array, mas retorna um novo 
# array contendo os resultados do bloco aplicado.
# Ideal para transformar elementos em novos valores.


numeros = [6, 7, 8, 9, 10]
dobrados = numeros.map do |numero|
  numero * 2
end

puts numeros.inspect
puts dobrados.inspect