# Crie um programa que gerencie uma fila de atendimento. O programa deve:

# Adicionar novos clientes no início da fila usando unshift.
# Remover o cliente que está sendo atendido usando shift.
# Exibir a lista de clientes na fila a cada etapa.

# fila = []

# loop do 
#   puts "Escolha uma opção:"
#   puts "1. Adicionar um cliente ao início da fila."
#   puts "2. Atender o próximo cliente."
#   puts "3. Mostrar a fila atual"
#   puts "4. Sair"

#   opcao = gets.chomp.to_i

#   case opcao
#   when 1
#     puts "Digite o nome do cliente"
#       cliente = gets.chomp
#       fila.unshift(cliente)
#       puts "#{cliente} foi adicionado ao início da fila."

#   when 2
#     if fila.empty?
#       puts "A fila está vazia. Nenhum cliente para atender."
#     else
#       cliente_atendido = fila.shift
#       puts "o cliente #{cliente_atendido} foi atendido e removido da fila"
#     end
#   when 3
#     if fila.empty?
#       puts "A fila está vazia"
#     else
#       puts "A fila está assim: #{fila.inspect}"
#     end
#   when 4
#     puts " Programa encerrado.."
#     break
#   else
#     puts "Opção inválida Tente novamente"
#   end
# end         

# Desafio com each:
# Escreva um programa que exiba a soma dos elementos de um array usando o 
# método each.
# soma = 0
# numeros = [1,2,3,4]
# numeros.each do |numero|
#   soma += numero
# end

# puts "A soma dos elementos do array é #{soma}"

# puts "\n"

# # Desafio com map:
# # Escreva um programa que multiplique cada número de um array por 3 e retorne o 
# # novo array.

# numeros = [12, 13, 14, 15]
# triplos = numeros.map do |numero|
#   numero * 3
# end

# puts "nova array é #{triplos.inspect}"

# Desafio
# Crie um hash para armazenar os dados de um produto (nome, preço, quantidade). 
# Em seguida:
# Adicione um novo produto.
# Atualize o preço de um produto.
# Liste todos os produtos com seus dados.


# produto = {nome: "mel", preco: "R$3.50", quantidade: 8}
# produto[:preco] = "R$3,75"
# puts produto

# puts "\n"

# puts "#{produto[:nome]}"
# puts "#{produto[:preco]}"
# puts "#{produto[:quantidade]}"

# produto1 = {nome: "leite", preco: "R$5.99", quantidade: 12}
# produto2 = {nome: "manteiga", preco: "R$19.99", quantidade: 17}
# produto3 = {nome: "arroz", preco: "R$4.99", quantidade: 22}

# produtos = [produto, produto1, produto2, produto3]

# puts "Produtos cadastrados:"
# produtos.each do |prod|
#   puts "Nome: #{prod[:nome]}"
#   puts "Preço: #{prod[:preco]}"
#   puts "Quantidade: #{prod[:quantidade]}"
#   puts "-------------------"
# end

# Desafio: Gerenciador de Estoque
# Crie um programa para gerenciar o estoque de uma loja. Ele deve permitir 
# que o usuário:
# Cadastre novos produtos com:
# Nome
# Preço
# Quantidade em estoque
# Liste todos os produtos cadastrados, exibindo:

# Nome
# Preço formatado (duas casas decimais)
# Quantidade em estoque
# Atualize a quantidade de um produto específico.

# Permita ao usuário sair do programa.
# estoque = []

# loop do
#  puts "--- Gerenciador de Estoque ---"
#  puts " Digite a opção desejada:"
#  puts "1. Adicionar produtos"
#  puts "2. Mostrar o estoque atual"
#  puts "3. Sair"

#  opcao = gets.chomp.to_i

#  case opcao
#  when 1
#   puts "Digite o nome: "
#   nome = gets.chomp
#   puts "Digite o valor: "
#   valor = gets.chomp.to_i
#   puts "Digite a quantidade: "
#   quantidade = gets.chomp.to_i

#   estoque.push({nome: nome, valor: valor, quantidade: quantidade})
#   puts "Produto #{nome} adicionado com sucesso!"
 
#  when 2
#   puts "---Estoque atual---"
#   if estoque.empty?
#     puts "Estoque vazio"
#    else
#       estoque.each_with_index do |produto, index|
#       puts "#{index + 1}. Nome: #{produto[:nome]}, Valor: R$#{'%.2f' % produto[:valor]}, Quantidade: #{produto[:quantidade]}"
#    end
#  end

#  when 3
#    puts "Saindo do programa. Até logo!"
#  end
# end


alunos = []

loop do
  puts "--Cadastro de alunos--"
  puts "Digite a opção desejada:"
  puts "1. Para cadastrar novo aluno."
  puts "2. Atualize a idade."
  puts "3. Exibir todo o cadastro"
  puts "4. Para remover aluno."
  puts "5. Encerrar o programa."

  opcao = gets.chomp.to_i

  case opcao
  when 1
    puts "Digite o nome: "
    nome = gets.chomp
    puts "Digite a idade: "
    idade = gets.chomp.to_i

    alunos.push({nome: nome, idade: idade})
    puts "Aluno cadastrado com sucesso"

  when 2
    puts "Digite o nome do aluno para atualizar a idade:"
    nome = gets.chomp
    
    aluno_encontrado = alunos.find { |aluno| aluno[:nome].downcase == nome.downcase}

    if aluno_encontrado
      puts "Digite a nova idade para #{aluno_encontrado[:nome]}"
      nova_idade = gets.chomp.to_i
      aluno_encontrado[:idade] = nova_idade
      puts "Idade atualizada com sucesso!"
    else
      puts "Aluno não encontrado!"
    end

  when 3
    puts "--Cadastro atual--"
    if alunos.empty?
      puts "Não há alunos cadastrados."
    else
      alunos.each_with_index do |kid, index|
        puts "#{index + 1}. Nome: #{kid[:nome]}, Idade: #{kid[:idade]}"
      end
    end

  when 4

  when 5
    puts "Saindo do programa. Até breve!"
  end
end    