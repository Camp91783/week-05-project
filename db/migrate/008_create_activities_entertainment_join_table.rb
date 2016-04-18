class CreateActivitiesEntertainmentJoinTable < ActiveRecord::Migration
  def change
    create_join_table :activities, :entertainment
  end
end