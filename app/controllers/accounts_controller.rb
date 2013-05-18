class AccountsController < ApplicationController

	def show
		@exercise_class = ExerciseClass.find(class_id)
	end
