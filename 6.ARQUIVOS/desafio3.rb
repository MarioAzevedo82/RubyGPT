# 3. Adicionar Conteúdo a um Arquivo
# Crie um programa que:

# Solicite o nome do arquivo.
# Permita ao usuário adicionar uma linha de texto ao final do arquivo.

puts "--Bem vindo!--"
puts "Digite o nome do arquivo (com extensão .txt)"
arquivo = gets.chomp

if File.exist?(arquivo)
  puts "Digite a linha de texto a ser adicionada no arquivo '#{arquivo}'"
  adicionada = gets.chomp
  
  File.open(adicionada, 'a') do |file|
    file.puts adicionada
  end

else
  puts "Arquivo inexistente"
end


