# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  { name: 'taro', email: 'jwaa@gmail.com', introduction: 'aaaaaas', status: 'Traveler', sex: 'Male', password: 222222  }
]
ActiveRecord::Base.transaction do
  users.each do |user|
    User.create!(user)
  end
end

prefectures = [
  { name: 'TOKYO', image:"photo0000-2593.jpg" }
]
ActiveRecord::Base.transaction do
  prefectures.each do |prefecture|
    Prefecture.create!(prefecture)
  end
end

guide_posts = [
  { titile: 'titile', body:'traditional meal tour' }
]
ActiveRecord::Base.transaction do
  guide_posts.each do |prefecture|
    GuidePost.create!(guidepost)
  end
end

