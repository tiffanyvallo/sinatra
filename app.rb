require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "hello!"
end

get '/secret' do
  "hiiii"
end


get '/random-cat' do
  @name = ["Cat","Misty","Almond"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end

post '/named-cat' do
  @name = params[:name]
  erb(:index)
end
