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

get '/menu_items/:id' do
  @menu_items = {
    1 => 'BBQ Ribs',
    2 => 'Avocado Sushi',
    3 => 'Gluten-Free Cookies',
    4 => 'Nitrogen Chocolate Ice Cream'
  }

  @menu_item_id = params[:id].to_i

  erb :menu_item
end
