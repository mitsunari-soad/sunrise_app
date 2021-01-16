class Photo < ApplicationRecord

  belongs_to :user
  belongs_to :prefecture
  has_one_attached :image


  
  validates :introduction, presence: true
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  validates :prefecture_id, numericality: { other_than: 1 }
end
