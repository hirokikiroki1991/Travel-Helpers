class FavoritesController < ApplicationController
    def create
      guidepost = GuidePost.find(params[:guide_post_id])
      favorite = current_user.favorites.new(guide_post_id: guidepost.id)
      favorite.save!
      redirect_to guide_posts_path(guidepost)
    end

    def destroy
      post = Post.find(params[:post_id])
      favorite = current_user.favorites.find_by(post_id: post.id)
      favorite.destroy
      redirect_to post_path(post)
    end
end
