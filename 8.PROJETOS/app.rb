require 'sinatra'

# Rota Principal

get '/' do 
  "Bem-vindo ao meu primeiro Sinatra!"
end

# Rota /sobre

get '/sobre' do
  "Este é um app Ruby usando Sinatra."
end

