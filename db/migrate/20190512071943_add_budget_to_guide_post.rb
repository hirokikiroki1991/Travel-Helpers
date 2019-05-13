class AddBudgetToGuidePost < ActiveRecord::Migration[5.2]
  def change
    add_column :guide_posts, :budget, :integer
  end
end
