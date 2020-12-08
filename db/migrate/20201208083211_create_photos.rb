class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.text       :introduction,  null: false
      t.integer    :prefecture_id, null: false
      t.references :user,          foreign_key: true
      t.timestamps
    end
  end
end
