class CreatePicturesTags < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures_tags do |t|
      t.integer :tag_id
      t.integer :picture_id
    end
  end
end
