require 'sinatra'

get '/' do
  redirect to('/menu_items')
end

get '/about' do
  'TODO'
end

get '/contact' do
  'TODO'
end

get '/legalese' do
  'TODO'
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
