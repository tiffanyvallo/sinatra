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
  p params[:name]
  @name =params[:name]
  erb(:index)
end
