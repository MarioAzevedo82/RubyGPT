# 4. Escolha entre Ler ou Escrever no Arquivo
# Crie um programa que:

# Solicite o nome de um arquivo.
# Pergunte se o usuário quer ler ou escrever no arquivo.
# Realize a ação escolhida.

puts "----Bem vindo!----"
puts "Digite o nome do arquivo (com extensão .txt):"
arquivo = gets.chomp

if File.exist?(arquivo)
  puts "Se deseja ler o arquivo digite 1, digite 2 para escrever no arquivo:"
  opcao = gets.chomp.to_i

  case opcao
  when 1
    File.open(arquivo, 'r') do |file|
      puts arquivo.read
    end

  when 2
    puts "Digite o texto a ser adicionado:"
    adicionado = gets.chomp

    File.open(arquivo, 'w') do |file|
      file.puts adicionado
    end
  end

else
  puts "Arquivo inexistente"
end
