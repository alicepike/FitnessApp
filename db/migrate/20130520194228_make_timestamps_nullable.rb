class MakeTimestampsNullable < ActiveRecord::Migration
  def up
  	change_column :exercise_classes_users, :updated_at, :datetime, :null => true
  	change_column :exercise_classes_users, :created_at, :datetime, :null => true
  end

  def down
  end
end
