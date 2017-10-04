gem 'activerecord', '=4.2.10'

require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'restaurant.sqlite3'
)

class MenuItem < ActiveRecord::Base
  field :name,        as: :string
  field :price,       as: :integer
  field :description, as: :text
end

MenuItem.auto_upgrade!

at_exit do
  ActiveRecord::Base.connection.close
end
