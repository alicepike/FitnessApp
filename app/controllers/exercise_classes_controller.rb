
class ExerciseClassesController < ApplicationController

	def index
	end

	def new
	end

	def create
	end

	def show
		class_id = params["id"]
		@exercise_class = ExerciseClass.find(class_id)
	end

	def edit 
	end

	def update
	end

	def delete 
	end

	def results
		@exercise_classes = ExerciseClass.where(:location => params[:location])
	end


end