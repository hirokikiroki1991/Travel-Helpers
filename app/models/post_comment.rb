class PostComment < ApplicationRecord
	belongs_to :user
	belongs_to :guidepost , optional: true
end
