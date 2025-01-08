#O método each é usado para percorrer elementos de uma coleção, como arrays e hashes.

# numeros = [10, 20, 30, 40, 50]
# numeros.each do |num|
#   puts "Número: #{num}"
# end

# puts "\n"

# pessoas = {"Thalita" => "Corretora", "Ely" => "Médico", "Lu" => "Advogada"}
# pessoas.each do |nome, profissao|
#   puts "Nome: #{nome}, profissão: #{profissao}"
# end

# Exemplo: Listar elementos de um array

# frutas = ["banana", "maçã", "uva"]

# frutas.each do |fruta|
#   puts "Eu gosto de #{fruta}!"
# end


# Exemplo: Quadrado de cada número em um array

# numeros = [2, 3, 4, 5]

# numeros.each do |numero|
#   puts "O quadrado do número #{numero} é #{numero**2}"
# end

# # Exemplo: Exibindo nomes e idades de pessoas

# pessoas = {"Mario" => 42, "Silvio" => 45, "Amanda" => 46}

# pessoas.each do |pessoa, idade|
#   puts "#{pessoa} tem #{idade} anos"
# end

# Exemplo: Somar idades de pessoas maiores de 25 anos

pessoas = {"Mario" => 35, "Silvio" => 45, "Amanda" => 46}
soma = 0

pessoas.each do |pessoa, idade|
  puts "#{pessoa} tem #{idade} anos"
  if idade > 40
    soma += idade
  end
end

puts "A soma das idades maiores que 40 anos é #{soma}"