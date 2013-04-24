class Meeting < ActiveRecord::Base
  has_many(:users)
  belongs_to(:exercise_class)
end
