# 1. Blocos
# Blocos são pedaços de código delimitados por do...end ou chaves ({}). 
# Eles não são objetos, mas podem ser passados como argumentos para métodos.

def cumprimentar
  puts "Antes do bloco"
  yield if block_given?
  puts "Depois do bloco"
end

cumprimentar { puts "Dentro do bloco"}

puts "\n"

def calcular(a, b)
  yield(a, b) if block_given?
end

calcular(5, 3) { |x, y| puts "A soma é: #{x + y}"}
calcular(5, 4) { |x, y| puts "O produto é: #{x * y}"}

puts "\n"

def saudacao
  puts "bom dia"
  yield
  puts "boa noite"
end

saudacao {puts "boa tarde"}