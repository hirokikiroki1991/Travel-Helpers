class UsersController < ApplicationController

	def top
	  @user = current_user
	  @post = Post.new
	  @posts = Post.all
	end

	def index
	  @user = User.all
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

	def guide
		@users = User.all
	end

	def area
	end

private
def post_params
  params.require(:user).permit(:name,:email,:profile_image_id, :introduction, :status, :prefecture, :sex)
end

end
