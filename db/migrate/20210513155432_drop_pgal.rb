class DropPgal < ActiveRecord::Migration[6.1]
  def change
    drop_table :pgallerys
  end
end
