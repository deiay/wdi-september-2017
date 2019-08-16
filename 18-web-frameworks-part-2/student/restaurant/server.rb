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
  @menu_items = MenuItem.all #.all is okay for small databases

  erb :menu_items
end

get '/menu_items/:id' do
  @menu_item = MenuItem.find(params[:id].to_i)

  erb :menu_item
end


# get '/menu_item/1' do
#
#   erb: menu_item_1
# end
#
# get '/menu_item/2' do
#
#   erb: menu_item_2
# end
#
# get '/menu_item/3' do
#
#   erb: menu_item_3
# end
#
# get '/menu_item/4' do
#
#   erb: menu_item_4
# end
