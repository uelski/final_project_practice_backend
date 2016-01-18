class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.date :date
      t.integer[] :band_id
      t.integer :venue_id

      t.timestamps null: false
    end
  end
end
