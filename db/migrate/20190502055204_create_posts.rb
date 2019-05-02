class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content
      t.text :image_id
      t.text :caption
      t.integer :user_id

      t.text :introduction
      profile_image_id :string

      t.timestamps
    end
  end
end
