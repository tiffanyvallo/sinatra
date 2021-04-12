require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "hello!"
end

get '/secret' do
  "hiiii"
end


get '/cat' do
  "<div style='border: 2px dashed red'>
  <img src= 'https://i.imgur.com/jFaSxym.png'>
  </div>"
end