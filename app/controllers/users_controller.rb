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
		@user = User.create(params[:user].slice(:username))

		if @user.valid?
			redirect_to(@user)
		else
			render(:new)
		end
	end
	
	#GET /users/me
	def me
		@user
	end

	# GET /users/:id/edit
	def edit
		@user = User.find(params[:id])
	end

	def update
	end


end
