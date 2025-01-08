# Atividade Prática
# Crie um arquivo CSV com os dados de uma lista de alunos (nome, idade e curso).
# Adicione um novo aluno ao arquivo.
# Leia o arquivo e exiba os dados no console.

require 'csv'
CSV.open("desafio.csv", "w") do |csv|
  csv << ["Nome", "Idade", "Time"]
  csv << ["Mario", 42, "Flamengo"]
  csv << ["Darlan", 41, "Vasco"]
  csv << ["Lenon", 34 , "Botafogo"]
end

puts "Arquivo CSV Adicionado"
