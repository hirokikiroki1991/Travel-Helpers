class AddUserIdToPrefecture < ActiveRecord::Migration[5.2]
  def change
    add_column :prefectures, :user_id, :integer
  end
end
