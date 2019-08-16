gem 'activerecord', '=4.2.10'
gem 'sqlite3', '~> 1.3.6'

require 'active_record'
require 'mini_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'restaurant.sqlite3'
)

class MenuItem < ActiveRecord::Base
  field :name, as: :string
  field :price, as: :integer
  field :description, as: :text
end

MenuItem.auto_upgrade!

at_exit do
  ActiveRecord::Base.connection.close
end
