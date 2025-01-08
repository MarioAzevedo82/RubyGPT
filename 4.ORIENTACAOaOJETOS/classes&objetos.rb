# Orientação a Objetos (OO)
# A Orientação a Objetos é um dos pilares da programação moderna. 
# Em Ruby, tudo é um objeto, o que facilita o aprendizado e aplicação 
# de conceitos como classes, herança e polimorfismo.

# 1. Classes e Objetos
# Criar classes com initialize
# O método initialize é chamado automaticamente quando um novo objeto é 
# criado a partir de uma classe. Ele é usado para inicializar as variáveis 
# de instância.


class Carro
  def initialize(marca, modelo)
    @marca = marca # Variável de instância
    @modelo = modelo
  end

  def detalhes
    "Marca: #{@marca}, Modelo: #{@modelo}"
  end
end

meu_carro = Carro.new("Toyota", "Corolla") # Criando um objeto
puts meu_carro.detalhes

puts "\n"

class Pessoa
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end

  def saudacao
    puts "Olá, meu nome é #{@nome} e tenho #{@idade} anos."
  end

  def envelhecer
    @idade += 1
  end

end

joao = Pessoa.new("João", 45)
puts joao.saudacao
joao.envelhecer
puts joao.saudacao

puts "\n"


# 2. Herança
# Herança permite que uma classe "filha" reutilize atributos e métodos
#  de uma classe "pai". A classe filha pode também adicionar novos 
#  comportamentos ou sobrescrever os existentes.


class Animal
  def dormir
    "Zzz..."
  end
end

class Cachorro < Animal
  def latir
    "Au Au!"
  end
end

rex = Cachorro.new
puts rex.dormir
puts rex.latir

puts "\n"

class Pai 
  def falar
    "Eu sou a classe Pai"
  end
end

class Filha < Pai
  def apresentar
    "Eu sou a classe Filha"
  end
end

filha = Filha.new
puts filha.falar # "Eu sou a classe Pai" (herdado)
puts filha.apresentar # "Eu sou a classe Filha" (definido na filha)

puts "\n"

# 3. Polimorfismo
# Polimorfismo permite que diferentes classes respondam de forma 
# diferente a um mesmo método.

class Forma
  def area
    "Área não definida"
  end
end

class Circulo < Forma
  def initialize(raio)
    @raio = raio
  end

  def area
    Math::PI * @raio**2
  end
end

class Retangulo < Forma
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def area
    @base * @altura
  end
end

formas = [Circulo.new(10), Retangulo.new(5,8)]
formas.each { |forma| puts forma.area}

puts "\n"
# 4. Encapsulamento
# Encapsulamento é o controle de acesso aos atributos e métodos de uma classe. 
# Em Ruby, usamos attr_accessor, attr_reader e attr_writer.

class ContaBancaria
  attr_reader :saldo

  def initialize(saldo_inicial)
    @saldo = saldo_inicial
  end

  def depositar(valor)
    @saldo += valor
  end

  def sacar(valor)
    if valor <= saldo
      @saldo -= valor
    else
      "Saldo insufiiciente"
    end
  end
end

minha_conta = ContaBancaria.new(100)
puts minha_conta.depositar(20)
puts minha_conta.sacar(25)
puts minha_conta.saldo

puts "\n"

class Pessoa
  attr_reader :nome # Apenas Leitura
  attr_writer :idade # Apenas escrita
  attr_accessor :email # Leitura e escrita

  def initialize(nome, idade, email)
    @nome = nome
    @idade = idade
    @email = email
  end
end

pessoa = Pessoa.new("Mario", 42, "mariobct@msn.com")

puts pessoa.nome
pessoa.idade = 43
pessoa.email = "novo@gmail.com"
puts pessoa.email