class AddStartTimeToExerciseClass < ActiveRecord::Migration
  def change
  	add_column :exercise_classes, :start_time, :datetime
  end
end
