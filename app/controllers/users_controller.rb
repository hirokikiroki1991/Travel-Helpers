class UsersController < ApplicationController
	before_action :authenticate_user!, :only => [:show]


	def top
	  @user = current_user
	  @post = Post.new
  if signed_in?
    @feed_items = current_user.feed.page(params[:page])
  end
end


	def index
	  @users = User.all
	end

	def show
	  @user = User.find(params[:id])
    @guidepost = GuidePost.find(params[:id])
    @guideposts = @user.guide_posts
    @posts = @user.posts
	  @users = current_user
	  @currentUserEntry=Entry.where(user_id: current_user.id)
      @userEntry=Entry.where(user_id: @user.id)
      if @user.id == current_user.id
      else
        @currentUserEntry.each do |cu|
          @userEntry.each do |u|
            if cu.room_id == u.room_id then
              @isRoom = true
              @roomId = cu.room_id
            end
          end
        end
        if @isRoom
        else
          @room = Room.new
          @entry = Entry.new
        end
      end
    end


	def edit
	  @user = User.find(params[:id])
	end

	def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
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
    def user_params
      params.require(:user).permit(:name,:email,:profile_image_id, :introduction, :status, :prefecture, :sex)
    end

end
