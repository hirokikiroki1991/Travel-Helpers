class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

def set_search
  #@search = Article.search(params[:q])
  @post_search = Post.ransack(params[:q])
  @search_posts = @post_search.result #.page(params[:page])
  @user_search = User.ransack(params[:q])
  @search_users = @user_search.result #.page(params[:page])
end






  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end


end
