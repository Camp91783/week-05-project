class CreateActivitiesTable < ActiveRecord::Migration
	def change
		create_table :activities do |t|
			t.string :name, null: false
			t.string :cost, null: false
		end
	end
end