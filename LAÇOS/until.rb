# O until em Ruby é semelhante ao while, mas funciona de maneira oposta: 
# ele executa o loop enquanto a condição for falsa e para quando a condição 
# se torna verdadeira.

# Vamos criar um exemplo em que um número é incrementado até que atinja 10.

# numero = 1

# until numero > 10
#   puts "O número é #{numero}"
#   numero += 1
# end

# Exercício Prático
# Tente criar um programa em que você pede para o usuário digitar números 
# até que ele digite um número negativo. Mostre a quantidade de números 
# digitados no final.

# contador = 0

# until false 
#   print "Digite um número (negativo para sair): "
#   numero = gets.chomp.to_i

#   break if numero < 0 

#   contador += 1

# end

# puts "Você digitou #{contador} números positivos"

# Exercício: Contagem Regressiva
# Crie um programa que peça para o usuário digitar um número positivo e faça uma 
# contagem regressiva a partir desse número até zero.

# print "Digite um número positivo para contagem regressiva: "
# numero = gets.chomp.to_i

# until numero < 0
#   puts numero
#   numero -= 1
# end

# puts "Contagem regressiva encerrada!"

# puts "\n"

# print "Digite um número para contagem regressiva: "
# num = gets.chomp.to_i

# until num < 1
#   puts num
#   num -= 1
# end

# puts "Fim da contagem"

# Exercício: Somando Números até Chegar a um Limite
# Crie um programa que peça ao usuário para digitar números e some esses números até 
# que a soma total ultrapasse 100. O programa deve parar quando a soma passar de 100 
# e mostrar a soma final.

# soma = 0
# until soma > 100
#   puts "Digite um número para a soma: "
#   numero = gets.chomp.to_i
#   soma += numero
#   puts "A soma atual é #{soma}"
#   puts "\n"
# end

# puts "A soma passou de 100! O total foi #{soma}"

# Exercício: Jogo de Adivinhação com Limite de Tentativas
# Crie um programa que peça ao usuário para adivinhar um número secreto entre 1 e 50. 
# O usuário tem um número limitado de tentativas (por exemplo, 5). O programa deve 
# informar se o número digitado é maior ou menor que o número secreto e parar quando 
# o número for adivinhado ou as tentativas se esgotarem.

coringa = rand(1..50)
contagem = 0
tentativas_maximas = 5

puts "Tente advinhar o coringa! Vc tem #{tentativas_maximas}"

until contagem >= 5
    puts "Digite um número para encontrar o coringa: "
    numero = gets.chomp.to_i
    contagem += 1

    if numero == coringa
        puts "Parabéns vc encontrou o coringa: #{coringa}"
        break
    elsif numero < coringa 
        puts "Digite um número maior!"
    else
        puts "Digite um número menor!"
    end

    if contagem == tentativas_maximas
        puts "Fim de jogo! O coringa era #{coringa}"
    end
end



  