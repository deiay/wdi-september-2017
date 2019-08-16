gem "activerecord", "=4.2.10"
require "active_record"
require "mini_record"

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'films.sqlite3')

class Film < ActiveRecord::Base
#  attr_accessor :id, :title, :country, :genre, :rating, :description

  field :title, as: :string
  field :country, as: :string
  field :genre, as: :string
  field :rating, as: :integer
  field :description, as: :text


# @@library = []
# @@id = 1
#
#   def initialize(options)
#     @title = options[:title]
#     @country = options[:country]
#     @rating = options[:rating]
#     @description = options[:description]
#     @id = @@id
#
#     @@id += 1
#   end
#
#   def self.create(options)
#     film = self.new(options)
#     @@library << film
#     return film
#   end
#
#   def self.all
#     return @@library
#   end
end
Film.auto_upgrade!
