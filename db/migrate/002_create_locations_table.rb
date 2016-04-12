class CreateLocationsTable < ActiveRecord::Migration
	def change
		create_table :locations do |t|
			t.string :name, nill: false
		end
	end
end