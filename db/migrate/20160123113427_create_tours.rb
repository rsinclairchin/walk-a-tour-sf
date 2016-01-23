class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.integer :duration
      t.integer :distance
      t.integer :rating
      t.references (:user)
      t.timestamps
    end
  end
end
