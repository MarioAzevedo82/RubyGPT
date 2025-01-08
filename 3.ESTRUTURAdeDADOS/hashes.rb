# Hashes são coleções de pares chave-valor em Ruby. Eles são úteis quando 
# precisamos associar uma chave específica a um valor. A chave pode ser 
# qualquer tipo de objeto (como string, symbol, ou integer), e o valor 
# pode ser qualquer tipo de dado.


meu_hash = {
  nome: "Mario",
  idade: 42,
  cidade: "Florianópolis"
}

puts meu_hash.inspect
puts meu_hash[:nome]
puts meu_hash[:idade]

puts "\n"

# Adcionar elementos
meu_hash[:altura] = 1.84
meu_hash[:cor] = "branca"

puts meu_hash
puts "\n"

# Remover elementos

meu_hash.delete(:cor)

puts meu_hash
puts "\n"


# Verificar chaves ou valores

puts meu_hash.key?(:nome)
puts meu_hash.value?("Mario")

puts "\n"

# Iteração

meu_hash.each do |key, value|
  puts "#{key}: #{value}"
end

puts "\n"

meu_hash[:cor] = "branca"
meu_hash[:profissao] = 'Developer'
meu_hash[:status] = "furioso"

meu_hash.each do |chave , valor|
  puts "#{chave}: #{valor}"
end

puts "\n"

# Obter Apenas as Chaves ou Valores
# Apenas as chaves:

puts meu_hash.keys.inspect

puts "\n"

# Apenas os valores:
puts meu_hash.values.inspect

# Crie um hash para representar um livro, com as seguintes chaves: 
# título, autor e páginas.

livro = {titulo: "Volte por cima", autor: "Mario Azevedo", paginas: 295}
puts livro.inspect
livro[:editora] = "Sonhar"
livro[:paginas] = 340

puts livro.keys.inspect
puts livro.values.inspect
puts livro.key?(:editora)

livro.each do |keys, values|
  puts "#{keys}: #{values}"
end

livro.delete(:autor)

puts livro.inspect

