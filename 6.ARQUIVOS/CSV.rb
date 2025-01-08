# O que é CSV?
# CSV (Comma-Separated Values) é um formato de arquivo onde os dados são 
# separados por vírgulas ou outro delimitador. Cada linha representa um 
# registro, e cada coluna é um campo desse registro.


#1. Ler um Arquivo CSV

# require 'csv'

# puts "Lendo um arquivo CSV ..."

# CSV.foreach("dados.csv") do |linha|
#   puts "Nome: #{linha[0]}, Idade: #{linha[1]}, Profissão: #{linha[2]}"
# end

# 2. Escrever em um Arquivo CSV

require 'csv'
CSV.open("novo_arquivo.csv", "w") do |csv|
  csv << ["Nome", "Idade", "Profissão"]
  csv << ["Mario", 42, "Programador"]
  csv << ["Thalita", "37", "Corretora"]
end

puts "Arquivo CSV criado com sucesso!"

#3. Adicionar Conteúdo a um Arquivo CSV

require 'csv'

CSV.open("novo_arquivo.csv", "a") do |csv|
  csv << ["Ana", 28, "Gerente"]
end

puts "Conteúdo adicionado ao arquivo CSV."

