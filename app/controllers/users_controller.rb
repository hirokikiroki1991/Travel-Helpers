class UsersController < ApplicationController

	def top
	  @user = current_user
	  @post = Post.new
	  @posts = Post.all

	end

	def show
	  @user = User.find(params[:id])
	  @post = Post.new
	end

	def edit
	  @user = User.find(params[:id])
	end

	def update
	end

	def destory
	end

# private
#   def search_params
#     params.require(:q).permit!
#   end

end
