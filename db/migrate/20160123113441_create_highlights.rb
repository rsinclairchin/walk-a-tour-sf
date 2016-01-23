class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.string :title
      t.string :category
      t.float :latitude
      t.float :longitude
      t.string :audio
      t.integer :picture
      t.references (:user, :tour)
      t.timestamps
      geocoded_by :full_street_address
      after_validation :geocode
    end
  end
end
