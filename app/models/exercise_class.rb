class ExerciseClass < ActiveRecord::Base
  has_many(:locations)
  has_many(:users)
  has_many(:ratings)
end
