class CreateTripsTable < ActiveRecord::Migration
	def change
		create_table :trips do |t|
			t.string :name
			t.string :description
			t.string :trip_id
			t.string :entertainment_id
		end
	end
end

		