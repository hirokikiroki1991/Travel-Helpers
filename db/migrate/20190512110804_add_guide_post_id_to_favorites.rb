class AddGuidePostIdToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :guide_post_id, :integer
  end
end
