class CreateLocationsActivitiesTable < ActiveRecord::Migration
	def change
		create_join_table :locations, :activities 
	end	
end