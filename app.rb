require 'sinatra'

enable :sessions
set :secret_sessions, 'secret'

get '/' do
  'hello!'
end

get '/secret' do
  'this is a secret page. lololol'
end

post '/posty-mc-posterson' do
  'postage'
end

get '/random-cat' do
  @name = ['Fluffy', 'Ginger', 'Frank'].sample
  erb :index
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/form' do
  erb :form
end
