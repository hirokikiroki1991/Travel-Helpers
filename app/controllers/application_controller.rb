class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

def after_sign_in_path_for(resource)
  user_path(@user.id) # ログイン後に遷移するpathを設定
end

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
    devise_parameter_sanitizer.permit(:sign_up, keys: [:gender])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:Nationality])
  end


end
