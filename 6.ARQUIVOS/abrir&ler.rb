# Conceito básico: Leitura e Escrita
# No Ruby, usamos a classe File para lidar com arquivos. O fluxo geral é:

# 1. Abrir o arquivo.
# 2. Realizar a operação desejada (ler, escrever).
# 3. Fechar o arquivo.

# File.open("c:/Users/Mario Jeronymo/Desktop/RubyGPT/ARQUIVOS/exemplo.txt", "r") do |arquivo|
#   puts "Conteúdo do arquivo:"
#   puts arquivo.read 
# end


puts Dir.pwd


# *** "w": modo de escrita, que apaga o conteúdo anterior do arquivo. ***
File.open("exemplo.txt", "w") do |arquivo|
  arquivo.puts "Primeira linha"
  arquivo.puts "Segunda linha"
end

puts "\n"

# "r": modo leitura
File.open("exemplo.txt", "r") do |arquivo|
  puts "Conteúdo do arquivo:"
  puts arquivo.read 
end

#Adicionando conteúdo ao final do arquivo
File.open("exemplo.txt", "a") do |arquivo|
  arquivo.puts "Nova linha adicionada"
end

puts "\n"

File.open("exemplo.txt", "r") do |arquivo|
  puts arquivo.read
end

puts "\n"

# Ler Linhas Individualmente
File.open("exemplo.txt", "r") do |arquivo|
  arquivo.each do |linha|
    puts "Linha: #{linha}"
    
  end
end
puts "\n"

# Fechar Arquivo Manualmente
arquivo = File.open("exemplo.txt", "r")
puts arquivo.read
arquivo.close

puts "\n"

File.open("6.ARQUIVOS/ultra.txt", "r") do |arquivo|
  puts arquivo.read
end

File.open("teste.txt", "r") do |teste|
  puts teste.read
end