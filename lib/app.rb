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

get '/cat' do
  erb(:index)
end