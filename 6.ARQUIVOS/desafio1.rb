# 1. Criar e Escrever em um Arquivo
# Crie um programa que:

# Solicite ao usuário um nome de arquivo.
# Peça para o usuário digitar um texto.
# Grave o texto no arquivo.

puts "--Bem vindo!--"
puts "Digite o nome do arquivo (usando a extensão .txt):"
arquivo = gets.chomp

puts "Digite o texto que deseja salvar no arquivo:"
texto = gets.chomp

File.open(arquivo, "w") do |file|
  file.puts texto
end

puts "Texto gravado no arquivo '#{arquivo}.'"