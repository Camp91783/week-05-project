class AddAssociations < ActiveRecord::Migration
  def change
    add_column :locations, :trip_id, :integer
s    add_column :activities, :location_id, :integer
    
  end
end