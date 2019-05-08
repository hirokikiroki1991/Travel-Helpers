class AddStatusToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :status, :string
    add_column :users, :Prefectures, :string
    add_column :users, :nickname, :string
  end
end
