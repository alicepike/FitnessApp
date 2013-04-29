class Meeting < ActiveRecord::Base
  has_many(:users)
  belongs_to(:exercise_class)
  has_and_belongs_to_many(:instructors)
end
