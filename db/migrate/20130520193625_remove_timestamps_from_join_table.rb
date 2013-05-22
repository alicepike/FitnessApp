class RemoveTimestampsFromJoinTable < ActiveRecord::Migration
  def up
  end

  def down
  	remove_column :exercise_classes_users, :created_at
  	remove_column :exercise_classes_users, :updated_at
  end
end
