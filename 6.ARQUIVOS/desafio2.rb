# 2. Ler o Conteúdo de um Arquivo
# Crie um programa que:

# Peça ao usuário o nome de um arquivo.
# Leia o conteúdo do arquivo e exiba no console.

puts "--Bem vindo!--"
puts "Digite o nome do arquivo (use a extensão .txt)"
arquivo = gets.chomp

puts "conteúdo do arquivo:"
  File.open(arquivo, "r") do |file|
    puts file.read
  end

puts "\n"  
# Resolução GPT 

puts "Digite o nome do arquivo que deseja ler (com extensão .txt):"
arquivo = gets.chomp

if File.exist?(arquivo)
  puts "O conteúdo do arquivo '#{arquivo} é:'"
  puts File.read(arquivo)

else
 puts "Arquivo '#{arquivo}' não exite"
end
