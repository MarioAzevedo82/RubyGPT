# puts "Dgite um número de 1 a 10: "
# i = gets.chomp.to_i

# i = 0
# while i <= 3
#   puts i
#   i += 1
# end


# Exercício: Contagem Regressiva
# Crie um programa que pede ao usuário um número e faz uma contagem 
# regressiva até zero, exibindo cada número no caminho.

# puts "Digite um número: "
# i = gets.chomp.to_i


# while i >= 0 
#   puts i
#   i -= 1
# end

# puts "\n"

# Exercício: Tabuada
# Crie um programa que pede ao usuário um número e exibe
#  a tabuada desse número de 1 a 10.

# puts "TABUADA"
# print "Digite um número: "
# numero = gets.chomp.to_i

# i = 1
# while i <= 10
#   puts "#{i} x #{numero} = #{i*numero}"
#   i += 1
# end

# puts "\n"

# Exercício: Soma de Números Positivos
# Crie um programa que continue pedindo números ao usuário até 
# que ele digite um número negativo. O programa deve somar todos 
# os números positivos digitados e exibir o total no final.

# soma = 0

# while true
#   print "Digite um número (ou um número negativo para sair):"
#   num = gets.chomp.to_i

#   if num < 0 
#     break
#   end

#   soma += num 
# end

# puts "A soma dos números positivos é #{soma}"

# puts "\n"

# Exercício: Adivinhe o Número
# Crie um programa que escolhe um número aleatório entre 1 e 100. 
# O usuário deve tentar adivinhar o número, e o programa deve dar dicas 
# se o palpite é maior ou menor que o número secreto. O jogo termina 
# quando o usuário acerta o número.

# coringa = rand(1..100)
# tentativas = 0

# while true
#   puts "Digite um número de 1 a 100: "
#   number = gets.chomp.to_i
#   tentativas += 1

#   if number == coringa
#     puts "Parabéns! Você advinhou no número secreto #{coringa} em #{tentativas} tentativas"
#     break
#   end

#   if number < coringa
#     puts "Tente um número maior!"
#   else
#     puts "Tente um número menor!"
#   end
# end

# Exercício: Calculadora de Média de Notas
# Crie um programa que permita ao usuário inserir várias notas 
# de alunos e, ao final, calcule e exiba a média das notas. O 
# programa deve parar de pedir novas notas se o usuário inserir um valor negativo.

puts "Calculador de médias"
puts "Digite suas notas (caso queira finalizar, digite um valor negativo)"
qnt = 0
soma = 0

while true
  puts "Digite a nota #{qnt + 1}"
  nota = gets.chomp.to_f
  
  if nota < 0 
    break
  end
  soma += nota
  qnt += 1
end

media = soma/qnt
puts "A média é #{media}"




