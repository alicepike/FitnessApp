class UsersController < ApplicationController

	# GET /users
	def index
		# pass ALL users to view
		@users = User.all()
	end
	
	# GETS /users/new
	def new
		@user = User.new()
	end

	# POST /users
	def create
		@user = User.create(params[:user].slice(:username,:password,:password_confirmation))
		if @user.valid?
            @user.save
            flash[:notice] = "Thank you for signing up, you can now log in."
			redirect_to(root_path)
		else
			render(:new)
		end
	end
	
end
