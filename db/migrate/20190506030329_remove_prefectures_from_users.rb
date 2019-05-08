class RemovePrefecturesFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :Prefectures, :string
  end
end
