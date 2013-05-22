
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
		# params = {"location":"asd","date":{"year":"2013","month":"5","day":"13"}}

		# Create a datetime object out of the params date key
		my_date = DateTime.civil(
			params[:date][:year].to_i,
			params[:date][:month].to_i,
			params[:date][:day].to_i
		)

		# Add it in the where clause
		@exercise_classes = ExerciseClass.where(
			:start_time => my_date.beginning_of_day..my_date.end_of_day
		).where(
			"location like ?", "%#{params[:location]}%"
		)

	end


end