class GuidePostsController < ApplicationController
  def new
	  @guidepost = GuidePost.new
  end

  def show
	  @guidepost = GuidePost.find(params[:id])
	  @post_comment = PostComment.new
  end

  def create
	  @guidepost = GuidePost.new(guide_post_params)
	  @guidepost.user_id = current_user.id
	  @guidepost.prefecture_id = params[:id]
	  @guidepost.save!
	  redirect_to root_path
  end

  def index
	  @guideposts = GuidePost.all
  end


private
def guide_post_params
  params.require(:guide_post).permit(:title,:body,:user_id,:image,:prefecture_id,:budget)
end
end