class Picture < ActiveRecord::Base
  has_many :comments
  # there is a picture_id column in the comments table
  # pic.comments
  # pic.comments << my_comment
  # pic.comments.count
  # pic.comments.where
  # pic.comments.build
  # pic.comments.create
  # etc
end
