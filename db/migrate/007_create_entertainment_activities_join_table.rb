class CreateEntertainmentActivitiesJoinTable < ActiveRecord::Migration
  def change
    create_join_table :entertainments, :activities
  end
end