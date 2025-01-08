
# Atividade Prática: Lambdas para Diferentes Comportamentos
# Objetivo:
# Crie um programa que utiliza lambdas para implementar diferentes cálculos 
# matemáticos e permite ao usuário escolher qual operação realizar.

# Descrição da Atividade:
# Defina lambdas para as operações de adição, subtração, multiplicação e divisão.
# Crie um método chamado executar_operacao que aceita uma lambda e dois números 
# como argumentos.
# O programa deve apresentar um menu ao usuário para escolher uma operação.
# Após a escolha, o programa solicita dois números, executa a operação escolhida 
# e exibe o resultado.


loop do
puts "Escolha uma operação"
puts "1. Soma"
puts "2. Subtração"
puts "3. Multiplicação"
puts "4. Divisão"
puts "5. Sair"

opcao = gets.chomp.to_i
break if opcao == 5

if (1..4).include?(opcao)
puts "Digite o primeiro numero:"
n1 = gets.chomp.to_i
puts "Digite o segundo número:"
n2 = gets.chomp.to_i
end

case opcao
 when 1
  soma_lambda = -> (x, y) {x + y}
  puts "O resultado da soma é: #{soma_lambda.call(n1, n2)}"

 when 2
  sub_lambda = -> (x, y) {x - y}
  puts "O resultado da subração é: #{sub_lambda.call(n1, n2)}"

 when 3
  mult_lambda = -> (x, y) {x * y}
  puts "O resultado da multiplicação é: {mult_lambda.call(n1, n2)}"

 when 4
  if n2 == 0
    puts "Erro na divisão por 0"
  else
    div_lambda = -> (x, y) {x / y}
    puts "O resultado da divisão é: #{div_lambda.call(n1, n2)}"
  end

 else
  puts "Opção inválida! Tente novamente"
 end
end

puts "Programa encerrado"




