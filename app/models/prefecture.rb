class Prefecture < ApplicationRecord
	has_many :users, through: :prefecture_users
    has_many :prefecture_users
    accepts_nested_attributes_for :group_users

end
