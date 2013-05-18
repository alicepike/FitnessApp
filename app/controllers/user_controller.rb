class UserController < ApplicationController

	def attend
		# TODO create ExerciseClassUser record, if doesn't already exist
	end

	def rate
	end

	# TODO move over methods from UsersController - edit,update,show (views) - create User folder in view

	# GET /users/:id/edit
	def edit
		@user = User.find(params[:id])
	end

	#GET /users/me
	def show
		user_id = params[:id]
		@user = User.find(user_id)
		@classes_attended = @user.exercise_classes()
		@user_ratings = @user.ratings()
	end

	def update
	end
	
	# TODO update any links that have broken since we changed the routes (to user show/edit etc)
end


