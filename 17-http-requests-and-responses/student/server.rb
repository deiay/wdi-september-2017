require 'sinatra'

get '/frank-says' do
  'Put this in your pipe & smoke it!'
end

get '/' do
  redirect to '/home'
end

get '/home' do

@todo_list = [
  'Water the plants',
  'Mow the lawn',
  'Learn Code'
]

  #Send file must be the last line if your using it
  #send_file('views/hello.html')
  erb(:hello)
end

get '/hello' do
  'Hello'
end
