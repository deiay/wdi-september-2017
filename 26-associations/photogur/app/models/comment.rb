class Comment < ApplicationRecord
  belongs_to :picture
  # there is a picture_id column in the reviews table
  # some_comment.picture
  # some_comment.picture=(other_pic)
  # some_comment.create_picture
  # some_comment.build_picture
end
