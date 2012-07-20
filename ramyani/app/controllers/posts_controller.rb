class PostsController < ApplicationController
	def new
		@user=User.find(params[:user_id])
		@post = @user.posts.new
	end

	def create
		@user=User.find(params[:user_id])
		@post = @user.posts.new(params[:post])
		if @post.save
			# Handle a successful save.
    		else
      			render 'new'
		end
	end
	def show
	
		@post = Post.find(params[:id])
	end

end
