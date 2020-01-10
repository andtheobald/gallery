class CreatePgallerys < ActiveRecord::Migration[6.0]
  def change
    create_table :pgallerys do |t|
      t.string :img_url
      t.string :artwork_name
      t.string :artist_name
      t.text :information
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
