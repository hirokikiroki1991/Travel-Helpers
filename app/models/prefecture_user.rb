class PrefectureUser < ApplicationRecord
  belongs_to :user
  belongs_to :prefecture
end
