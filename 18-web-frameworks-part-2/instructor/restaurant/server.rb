require 'sinatra'

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
  @menu_items = {
    1 => 'BBQ Ribs',
    2 => 'Avocado Sushi',
    3 => 'Gluten-Free Cookies',
    4 => 'Nitrogen Chocolate Ice Cream'
  }

  erb :menu_items
end

get '/menu_items/1' do
  erb :menu_item_1
end

get '/menu_items/2' do
  erb :menu_item_2
end

get '/menu_items/3' do
  erb :menu_item_3
end

get '/menu_items/4' do
  erb :menu_item_4
end
