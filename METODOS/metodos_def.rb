# O que são métodos?
# Métodos em Ruby são blocos de código que realizam uma tarefa específica e 
# podem ser reutilizados em diferentes partes do programa. Eles ajudam a 
# organizar o código, tornando-o mais limpo e fácil de manter.


# def nome_do_metodo(parametro1, parametro2)
#   resultado = parametro1 + parametro2
#   return resultado
# end

# puts nome_do_metodo(3, 5)

# puts "\n"

# def soma(a, b)
#   a + b 
# end

# resultado = soma(4, 7)
# puts "O resultado da soma é: #{resultado}"

# #Tente criar um método que receba um número e retorne o quadrado dele.

# def quadrado(n)
#   n**2
# end

# puts quadrado(7)

# #Crie um método que receba um nome e imprima uma saudação personalizada.

# def saudacao
#   puts "Olá! Seja bem vindo!"
# end

# saudacao

# Exemplo simples de um método que converte temperaturas de Celsius para Fahrenheit

# def conversao(celcius)
#   celcius*1.8 + 32
# end



# puts "O valor de 30 graus celcius equivale a #{conversao(30)} fahrenheit"


# Exemplo de método de dificuldade média que envolve lógica para determinar 
# se um número é primo:

# def primo(numero)
#   return false if numero <= 1
#   (2..Math.sqrt(numero)).each do |i|
#     return false if numero % i == 0
#   end
#   true
# end

# puts "digite um número para verificar se é primo: "
# numero = gets.chomp.to_i

# if primo(numero)
#   puts "#{numero} é primo."
# else
#   puts "#{numero} não é primo."
# end

# Exemplo de um método de dificuldade média que calcula o fatorial de um número:

def fatorial(numero)
  return 1 if numero == 0 || numero == 1
  resultado = 1
  (2..numero).each do |i|
    resultado *= i
  end
  resultado

end

puts "Digite um número para o fatorial: "
numero = gets.chomp.to_i

puts "o fatorial de #{numero} é #{fatorial(numero)}"