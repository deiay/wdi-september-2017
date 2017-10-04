require 'sinatra'
require_relative 'menu_item'

get '/' do
  redirect to('/menu_items')
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

get '/legalese' do
  erb :legalese
end

get '/menu_items' do
  # .all is okay for small numbers of items, bad for large number of items
  @menu_items = MenuItem.all

  erb :menu_items
end

get '/menu_items/:id' do
  @menu_item = MenuItem.find(params[:id].to_i)

  erb :menu_item
end
