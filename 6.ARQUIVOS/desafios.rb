# Atividade Prática
# Crie um programa que:

# Peça ao usuário para criar ou abrir um arquivo.
# Ofereça as opções:
# Escrever no arquivo.
# Ler o arquivo.
# Adicionar conteúdo ao arquivo.
# Sair do programa.
loop do
  puts "--- Bem Vindo ao Gerenciador de Arquivos ---"
  puts "1. Criar ou abrir um arquivo"
  puts "2. Escrever no arquivo"
  puts "3. Ler o arquivo"
  puts "4. Adicionar conteúdo ao arquivo"
  puts "5. Sair do programa"
  puts "\nEscolha uma opção:"

  opcao = gets.chomp.to_i
  
  case opcao
  when 1
    print "Digite o nome do arquivo(com extensão txt)"
    nome_arquivo = gets.chomp

    File.open(nome_arquivo, "a") do 
      puts "Arquivo '#{nome_arquivo}' foi criado/aberto com sucesso!"
    end

  when 2
    if defined?(nome_arquivo).nil?
      puts "Por favor, crie ou abra um arquivo (opção 1)"
    else
      puts "Escreva o conteúdo do arquivo (isso substituirá o conteúdo atual):"
      conteudo = gets.chomp
    end 

    File.open(nome_arquivo, "w") do |file|
      file.puts conteudo
    end
    puts "Conteúdo gravado no arquivo '#{nome_arquivo}'."

  when 3
    if defined?(nome_arquivo).nil?
      puts "Por favor, crie ou abra um arquivo (opção 1)"
    else
      if File.exist?(nome_arquivo)
        puts "Conteúdo do arquivo '#{nome_arquivo}"        
        puts File.read(nome_arquivo)
      else
       puts "o arquivo '#{nome_arquivo} não existe."
      end
    end

  when 4
    if defined?(nome_arquivo).nil?
      puts "Por favor, abra ou crie um arquivo (opção 1)"
    else
      puts "Adicionando conteúdo novo ao arquivo '#{nome_arquivo}'"
      conteudo_novo = gets.chomp

      File.open(nome_arquivo, "a") do |file|
        file.puts conteudo_novo
      end
      puts "Conteúdo novo adicionado ao arquivo '#{nome_arquivo}'."
    end

  when 5
    puts "Programa encerrado, tá breve!"
    break

  else
    puts "Opção inválida! Escolha uma opção entre 1 e 5"
  end

  puts "-" * 30
end