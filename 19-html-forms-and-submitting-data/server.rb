require './film.rb'
require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

get '/films' do
  "GET request: #{params}"
end

get '/films/:id' do
  @film = Film.find(params[:id].to_i)

  erb :film
end

post '/films' do
  form_title = params[:title]
  form_description = params[:description]
  form_rating = params[:rating]
  form_country = params[:country]
  form_available = params[:available]

  Film.create({title: form_title, description: form_description,
               rating: form_rating, country: form_country,
               available: form_available })
  redirect to('/')
  #{}"POST request: #{params}"= 
end

put '/films' do
  "PUT request: #{params}"
end

delete '/films' do
  "DELETE request: #{params}"
end
