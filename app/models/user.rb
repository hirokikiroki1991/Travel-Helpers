class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  attachment :profile_image
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :prefectures, through: :prefecture_users
  has_many :messages, dependent: :destroy
  has_many :entries, dependent: :destroy
  has_many :guide_posts




  # フォローフォロワー関係
 has_many :following_relationships, foreign_key: "follower_id", class_name: "Relationship", dependent: :destroy
 has_many :followings, through: :following_relationships
 has_many :follower_relationships, foreign_key: "following_id", class_name: "Relationship", dependent: :destroy
 has_many :followers, through: :follower_relationships




  def following?(other_user)
    following_relationships.find_by(following_id: other_user.id)
  end

  def follow!(other_user)
    following_relationships.create!(following_id: other_user.id)
  end

  def unfollow!(other_user)
    following_relationships.find_by(following_id: other_user.id).destroy
  end

  def feed
    following_ids = "SELECT following_id FROM relationships
                     WHERE follower_id = :user_id"
    Post.where("user_id IN (#{following_ids})
                     OR user_id = :user_id", user_id: id)
  end

end
