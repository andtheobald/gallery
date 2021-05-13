class AddExhibitToSelections < ActiveRecord::Migration[6.1]
  def change
    add_reference :selections, :exhibit, null: false, foreign_key: true
    remove_column :selections, :exhibitID, :integer
  end
end
