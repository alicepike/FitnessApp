class UserController < ApplicationController

	def attend
		# TODO create ExerciseClassUser record, if doesn't already exist
		user_id = session["user_id"]
		@user = User.find(user_id)
		@exercise_class = params[:exercise_class_id]
		@exercise_class = ExerciseClass.find(@exercise_class)

		@exercise_class.users.push(@user)

		redirect_to exercise_classes_results_path

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

		# Get the user ID
		user_id = session["user_id"]

		# Check the user id exists
		if user_id != nil
			# Get the user object
			@user = User.find(user_id)
			# render template
			render(:me)

		else
			flash[:notice] = "You are not logged in"
			redirect_to root_path

		end

		# user_id = params[:id]
		# @user = User.find(user_id)
		# @classes_attended = @user.exercise_classes()
		# @user_ratings = @user.ratings()
	end

	def update
	end
	
	# TODO update any links that have broken since we changed the routes (to user show/edit etc)
end


