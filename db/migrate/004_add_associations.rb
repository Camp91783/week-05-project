class AddAssociations < ActiveRecord::Migration
  def change
    add_column :locations, :trip_id, :integer
    add_column :activities, :location_id, :integer
    add_column :locations, :entertainment_id, :integer
    
    
  end
end