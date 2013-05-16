class CreateExerciseClassesUsers < ActiveRecord::Migration
  def change
    create_table :exercise_classes_users do |t|
      t.integer :exercise_class_id
      t.integer :user_id

      t.timestamps
    end
  end
end
