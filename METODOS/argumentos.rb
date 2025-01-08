def saudacao(nome)
  "Olá #{nome}! Bem-vindo."
end

puts saudacao("Mario")

puts "\n"

def soma(a, b)
  return a + b
end

resultado = soma(3, 4)

puts "A soma é #{resultado}"

puts "\n"

def multiplicacao(a, b)
  a * b
end

puts "O resultado da multiplicação é #{multiplicacao(2, 8)}"

puts "\n"

def saudacao(nome, saudacao = "Olá")
  "#{saudacao}, #{nome}!"
end

puts saudacao("Mario")
puts saudacao("Mario", "Bem-vindo")

puts "\n"

def calculos(a, b)
  soma = a + b
  produto = a * b
  [soma, produto]
end

resultado_soma, resultado_produto = calculos(3, 7)
puts "Soma: #{resultado_soma}, Produto: #{resultado_produto}"

puts "\n"

def calcular_medias(notas)
  soma = notas.sum
  media = soma / notas.size.to_f
  [soma, media]
end

total, media = calcular_medias([8, 5, 3, 6, 9])
puts "Total: #{total}, Média: #{media.round(2)}"

puts "\n"

#Exercícios:
# Crie um método que receba o nome de uma pessoa 
# e imprima uma saudação personalizada.

def saudacao(nome)
  "Olá, #{nome}! Bom dia!"
end

puts saudacao("Eva")

puts "\n"

# Crie um método que receba dois números e retorne a soma deles.

def soma(x, y)
  soma = x + y
end

resultado = soma(2, 3)

puts "A soma é #{resultado}." 

puts "\n"

# Crie um método que receba uma palavra e retorne 
# a mesma palavra em letras maiúsculas.

def transformar_maiusculo(palavra)
  palavra.upcase
end

puts transformar_maiusculo("vida")

puts "\n"

# Crie um método que receba uma palavra e retorne 
# a mesma palavra em letras minúsculas.

def transformar_minusculo(palavra)
  palavra.downcase
end

puts transformar_minusculo("MAIS")

# Crie um método que receba uma frase e um caractere. O método deve contar 
# quantas vezes esse caractere aparece na frase.

def contar_caractere(frase, caractere)
  contador = 0
  frase.each_char do |char|
    contador += 1 if char == caractere
  end
  contador
end

puts "Digite uma frase: "
frase = gets.chomp

puts "Digite um caractere pra contar: "
caractere = gets.chomp

resultado = contar_caractere(frase, caractere)
puts "O caractere '#{caractere}' aparece #{resultado} vezes na frase."

puts "\n"

#1. Programa de cálculo de soma

def soma(num1, num2)
  num1 + num2
end

puts "Digite um número: "
numero1 = gets.chomp.to_i

puts "Digite outro número: "
numero2 = gets.chomp.to_i

resultado = soma(numero1, numero2)

puts "O resultado da soma é #{resultado}"

puts "\n"

def maioridade(n)
  if n >= 18
    puts "Maior de idade"
  else
    puts "Dimenor"
  end
end

puts "Digite a idade: "
idade = gets.chomp.to_i
maioridade(idade)
