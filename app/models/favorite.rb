class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :post, optional: true
  belongs_to :guidepost, optional: true

end
