class CreateGuidePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :guide_posts do |t|
      t.string :title
      t.integer :user_id
      t.integer :prefecture_id
      t.text :body
      t.text :image_id

      t.timestamps
    end
  end
end
