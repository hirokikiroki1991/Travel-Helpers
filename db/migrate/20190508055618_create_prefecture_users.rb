class CreatePrefectureUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :prefecture_users do |t|
      t.references :user, foreign_key: true
      t.references :prefecture, foreign_key: true

      t.timestamps
    end
  end
end
