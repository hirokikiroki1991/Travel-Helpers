class PostCommentsController < ApplicationController

def create
  comment = current_user.post_comments.new(post_comment_params)
  post = Post.find(params[:post_id])
  comment.post_id = post.id
  comment.save
  redirect_to post_path(post)
end

private
def post_comment_params
  params.require(:post_comment).permit(:user_id,
                      :post_id,
                      :comment,
                      :guidepost_id)
end
end
