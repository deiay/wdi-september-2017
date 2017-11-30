class Picture < ActiveRecord::Base
  has_and_belongs_to_many :tags
  # there is a pictures_tags join table
  # some_pic.tags
  # some_pic.tags <<
  # some_pic.tags.count
  # some_pic.tags.create
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
