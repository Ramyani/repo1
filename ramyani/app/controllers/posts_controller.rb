class PostsController < ApplicationController
	
	def new
		@user=User.find(params[:user_id])
		@post = @user.posts.new
	end

	def create
		@user=User.find(params[:user_id])
		@post = @user.posts.new(params[:post])
		if @post.save
			redirect_to user_path(@user)
			# Handle a successful save.
    		else
      			render 'new'
		end
	end
	def show
		@user =User.find(params[:user_id])
		@post =Post.find(params[:id])
	end

end
