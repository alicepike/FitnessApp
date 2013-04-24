class ExerciseClass < ActiveRecord::Base
  has_many(:locations,:users)

end
