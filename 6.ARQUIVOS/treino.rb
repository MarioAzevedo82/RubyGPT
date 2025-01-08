File.open("exemplo.txt", "r") do |arquivo|
  puts "Conteudo do Arquivo"
  puts arquivo.read
  end

  puts "\n"

File.open("exemplo.txt", "r") do |arquivo|
  puts arquivo.read
end

puts "\n"

File.open("teste.txt", "r") do |leitura|
  puts leitura.read
end

File.open("teste.txt", "a") do |leitura|
  leitura.puts "nova linha1 no final"
end
File.open("teste.txt", "a") do |leitura|
  leitura.puts "nova linha2 no final"
end
puts "\n"

File.open("teste.txt", "r") do |leitura|
  puts leitura.read
end

puts "\n"

File.open("teste.txt", "w") do |leitura|
  leitura.puts "Novas linhas"
  leitura.puts "1a linha"
  leitura.puts "2a linha"
end

File.open("teste.txt", "r") do |leitura|
  puts leitura.read
end

