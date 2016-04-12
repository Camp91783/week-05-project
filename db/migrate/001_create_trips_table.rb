class CreateTripsTable < ActiveRecord::Migration
	def change
		create_table :trips do |t|
			t.string :name, nill: false
			t.string :description, nill: false
		end
	end
end

		