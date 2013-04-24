class Instructor < ActiveRecord::Base
	has_many(:meetings)
end
