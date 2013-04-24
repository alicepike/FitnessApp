class CreateExerciseClasses < ActiveRecord::Migration
  def change
    create_table :exercise_classes do |t|
      t.string :name
      t.string :instructor
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
