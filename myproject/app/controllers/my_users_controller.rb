class MyUsersController < ApplicationController
	def index
    		@users = MyUser.all
  	end
	
	def show
		@user = MyUser.find(params[:id])
	end

	def edit
		@user = MyUser.find(params[:id])
	end

	def update
		@user = MyUser.find(params[:id])
		if @user.update_attributes(params[:my_user])
			# Handle a successful update.
    		else
      			render 'edit'
		end
	end

	def destroy
		MyUser.find(params[:id]).destroy

	end

	def new
		@user = MyUser.new
	end

	def create
		@user = MyUser.new(params[:my_user])
		if @user.save
			# Handle a successful save.
    		else
      			render 'new'
		end
	end

end
