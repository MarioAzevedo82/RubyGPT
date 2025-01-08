# Atividade Prática
# Crie um arquivo CSV com os dados de uma lista de alunos (nome, idade e curso).
# Adicione um novo aluno ao arquivo.
# Leia o arquivo e exiba os dados no console.

require 'csv'
CSV.open("desafio.csv", "w") do |csv|
  csv << ["Nome", "Idade", "Time"]
  csv << ["Mario", 42, "Flamengo"]
  csv << ["Darlan", 41, "Vasco"]
  csv << ["Binho", 42 , "Botafogo"]
end

puts "Arquivo CSV Adicionado"

CSV.open("desafio.csv", "a") do |csv|
  csv << ["Vagner", 42, "Fluminense"]
end

puts "Adicionado conteúdo ao CSV"

puts "\n--- Lendo o arquivo CSV ---\n\n"

CSV.foreach("desafio.csv", "r") do |linha|
  puts "Nome: #{linha[0]}, Idade: #{linha[1]}, Time: #{linha[2]}"
  puts "-" * 20
end

puts "\n\n--- Lendo o arquivo CSV usando 'headers:true' ---\n\n"

CSV.foreach("desafio.csv",  headers:true) do |linha|
  puts "Nome: #{linha[0]}, Idade: #{linha[1]}, Time: #{linha[2]}"
  puts "--" * 20
end
