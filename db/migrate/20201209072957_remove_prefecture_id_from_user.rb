class RemovePrefectureIdFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :prefecture_id, :string
  end
end
