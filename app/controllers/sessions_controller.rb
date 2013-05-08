class SessionsController < ApplicationController

	# POST /sessions
	def create
		# Find the User in the database by username
		@user = User.find_by_username(params[:username])
		# Authenticate the user with the password
		if @user and @user.authenticate(params[:password])
			session[:user_id] = @user.id
			flash[:notice] = "You have successfully logged in!"
		else
			flash[:error] = "Your username and password do not match"
		end
		redirect_to root_path
	end

end
