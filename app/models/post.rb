class Post < ApplicationRecord
	belongs_to :user
	attachment :image
	has_many :favorites, dependent: :destroy
	has_many :post_comments, dependent: :destroy

	default_scope -> { order(created_at: :desc) }

	def favorited_by?(user)
      favorites.where(user_id: user.id).exists?
    end
end
