class Tag < ApplicationRecord
  # we never use this
  has_and_belongs_to_many :pictures
end
