# 2. Procs
# Procs (procedures) são objetos que encapsulam blocos de código. 
# Eles são mais flexíveis que blocos porque podem ser armazenados 
# em variáveis e reutilizados.


saudacao = Proc.new { puts "Olá, td bem?"}
saudacao.call # Chama o Proc 

puts "\n"

multiplicar = Proc.new { |x, y| x * y }
resultado = multiplicar.call(2, 3)
puts "O resultado é: #{resultado}"

puts "\n"

def executar(proc_obj)
  proc_obj.call
end

meu_proc = Proc.new{ puts "Executando um Proc"}
executar(meu_proc)

puts "\n"

# MAIS EXEMPLOS

meu_proc = Proc.new { puts "Este é um Proc simples"}
meu_proc.call

puts "\n"

saudacao = Proc.new { |nome| puts "Olá, #{nome}!"}
saudacao.call("Mario")
saudacao.call("Eva")

puts "\n"

def executar_proc(meu_proc)
  puts "Executando um Proc"
  meu_proc.call
end

mensagem = Proc.new { puts "Esse Proc foi passado para método"}
executar_proc(mensagem)

puts "\n"

dobrar = Proc.new {|n| n * 2}
numeros = [1, 2, 3, 4, 5]

resultado = numeros.map(&dobrar)
puts resultado.inspect