class GuidePost < ApplicationRecord
	belongs_to :user
	belongs_to :prefecture
	attachment :image
	has_many :favorites, dependent: :destroy

	def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
    end
end
