require 'faker'

puts "Nome: #{Faker::Name.name}" # Gera um nome aleatório

puts "E-mail: #{Faker::Internet.email}" # Gera um email aleatório

puts "Frase: #{Faker::Quote.famous_last_words}" # Gera uma frase aleatória

