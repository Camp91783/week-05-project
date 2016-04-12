class CreateActivitiesTable < ActiveRecord::Migration
	def change
		create_table :activities do |t|
			t.string :name, nill: false
			t.string :cost, nill: false
		end
	end
end