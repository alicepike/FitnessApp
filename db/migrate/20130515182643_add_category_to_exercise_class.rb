class AddCategoryToExerciseClass < ActiveRecord::Migration
  def change
    add_column :exercise_classes, :category, :string
  end
end
