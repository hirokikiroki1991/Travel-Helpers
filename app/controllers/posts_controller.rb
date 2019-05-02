class PostsController < ApplicationController
  def new
	  @post = Post.new
  end

  def show
	  @post = Post.new(post_params)
  end

	def create

	  @post = Post.new(post_params)
	  @post.user_id = current_user.id
	  @post.save!
	  redirect_to root_path
	end


private
def post_params
  params.require(:post).permit(:content,:user_id,:image_id)

end

end
