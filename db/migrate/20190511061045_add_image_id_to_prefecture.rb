class AddImageIdToPrefecture < ActiveRecord::Migration[5.2]
  def change
    add_column :prefectures, :image_id, :text
  end
end
