# 3. Lambdas
# Lambdas são semelhantes aos Procs, mas com diferenças importantes:

# lambda verifica o número exato de argumentos.
# lambda retorna ao método que o chamou (não interrompe o método como um Proc faria).

minha_lambda = -> { puts "This is a lambda"}
minha_lambda.call

puts "\n"

calculo = ->(x, y) {x + y}
puts calculo.call(2, 3)

puts "\n"

nova_lambda = -> {puts "This is a new lambda"}
nova_lambda.call

puts "\n"

saudacao = ->(nome) { puts "Olá, #{nome}!"}
saudacao.call("tranqueira")
saudacao.call("butico")

puts "\n"

# DIERENÇA ENTRE LAMBDA E PROC

proc_exemplo = Proc.new {|x, y| x + y}
lambda_exemplo = ->(x, y) {x + y}

proc_exemplo.call(2) # funciona, mesmo faltando argumentos
lambda_exemplo.call(2, 3) # Erro:: argumentos faltando
