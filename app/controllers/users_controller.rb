class UsersController < ApplicationController
	before_action :correct_user,   only: [:edit, :update]

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
      @posts = @user.posts
	  @users = current_user
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

	def following
      @title = "Following"
      @user  = User.find(params[:id])
      @users = @user.followings
      render 'show_follow'
    end

  	def followers
      @title = "Followers"
      @user  = User.find(params[:id])
      @users = @user.followers
   	  render 'show_follower'
  	end

  private
    def post_params
      params.require(:user).permit(:name,:email,:profile_image_id, :introduction, :status, :prefecture, :sex)
    end
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end
