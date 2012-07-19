class UsersController < ApplicationController
	def index
		@users = User.all
	end	
	
	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			# Handle a successful update.
    		else
      			render 'edit'
		end
	end

	def destroy
		User.find(params[:id]).destroy

	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			# Handle a successful save.
    		else
      			render 'new'
		end
	end

end
