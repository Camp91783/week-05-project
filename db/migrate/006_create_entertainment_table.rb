class CreateEntertainmentTable < ActiveRecord::Migration
	def change
		create_table :entertainments do |t|
			t.string :name
			t.string :type
			t.string :entertainment_id
		end
	end
end
