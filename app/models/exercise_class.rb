class ExerciseClass < ActiveRecord::Base
  has_many(:locations)
  has_many(:ratings)
  
  has_and_belongs_to_many(:users)
end
