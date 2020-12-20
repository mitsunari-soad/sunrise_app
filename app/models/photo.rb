class Photo < ApplicationRecord

  belongs_to :user
  belongs_to :prefecture
  has_one_attached :image
  validates :prefecture_id, numericality: { other_than: 1 }
end
