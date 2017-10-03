require 'sinatra'

get '/' do
  redirect to('/hello')
end

get '/hello' do
  # Must be the last line
  # send_file('views/hello.erb')

  @current_time = Time.now
  
  @todo_list = [
    'Water the plants',
    'Go to the gym',
    'Call my friend',
    'Make dinner'
  ]

  erb(:hello)
end

get '/goodbye' do
  'Goodbye...'
end
