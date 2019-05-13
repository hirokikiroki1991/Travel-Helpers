class AddGuidePostIdToPostComments < ActiveRecord::Migration[5.2]
  def change
    add_column :post_comments, :guide_post_id, :integer
  end
end
