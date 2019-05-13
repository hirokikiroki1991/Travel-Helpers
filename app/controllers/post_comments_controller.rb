class PostCommentsController < ApplicationController

def create
  comment = current_user.post_comments.new(post_comment_params)
  guidepost = GuidePost.find(params[:guide_post_id])
  comment.guide_post_id = guidepost.id
  comment.save
  redirect_to guide_posts_path(guidepost)
end

private
def post_comment_params
  params.require(:post_comment).permit(:user_id,
                      :post_id,
                      :comment,
                      :guidepost_id)
end
end
