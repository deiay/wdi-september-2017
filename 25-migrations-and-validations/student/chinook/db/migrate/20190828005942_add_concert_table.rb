class AddConcertTable < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :name
      t.datetime :played_at
      t.integer :attendence
      t.text :description

      t.timestamps
    end
  end
end
