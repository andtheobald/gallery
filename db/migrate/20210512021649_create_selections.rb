class CreateSelections < ActiveRecord::Migration[6.1]
  def change
    create_table :selections do |t|
      t.integer :exhibitID

      t.timestamps
    end
  end
end
