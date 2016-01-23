class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.string :title
      t.string :category
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :audio
      t.integer :picture
      t.references :user
      t.references :tour
      t.timestamps
    end
  end
end
