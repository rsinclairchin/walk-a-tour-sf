class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.string :title
      t.integer :lat, null: false
      t.integer :long, null: false
      t.string :audio
      t.integer :picture
      t.references (:user, :tour)
      t.timestamps
    end
  end
end
