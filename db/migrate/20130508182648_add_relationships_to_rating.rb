class AddRelationshipsToRating < ActiveRecord::Migration
  def change
  	add_column :ratings, :user_id, :integer
  	add_column :ratings, :exercise_class_id, :integer
  end
end
