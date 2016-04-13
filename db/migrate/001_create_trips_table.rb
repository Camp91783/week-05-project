class CreateTripsTable < ActiveRecord::Migration
	def change
		create_table :trips do |t|
			t.string :name, null: false
			t.string :description, null: false
		end
	end
end

		