class UsersController < ApplicationController

	def top
	  @user = current_user
	  @post = Post.new
	  @posts = Post.all
	  # @search = Product.ransack(params[:q])
   #    @products = @search.result# 検索結果
	end

	def show
	  @user = User.find(params[:id])
	  @post = Post.new
	end

	def edit
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
