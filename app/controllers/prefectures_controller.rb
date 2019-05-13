class PrefecturesController < ApplicationController

  def new
  	@prefecture = Prefecture.new
  end

  def create
	  @prefecture = Prefecture.new(prefecture_params)
	  @prefecture.user_id = current_user.id
	  @prefecture.save
	  redirect_to prefectures_path
  end

  def index
  	@prefectures = Prefecture.all
  end

  def show
    @guideposts = GuidePost.where(prefecture_id: params[:id])
    @guidepost = GuidePost.new
  end

  private
def prefecture_params
  params.require(:prefecture).permit(:name, :image)
end

end