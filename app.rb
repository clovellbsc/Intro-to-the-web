require 'sinatra'
require 'sinatra/reloader' if development?

also_reload '/'
after_reload do
  puts 'reloaded'
end

get '/' do
  "Test!"
end

get '/secret' do
  "Shhhhh..."
end

get '/greeting' do
  "Bonjour!"
end

get '/random-cat' do
  @cat_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @cat_name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:form)
end