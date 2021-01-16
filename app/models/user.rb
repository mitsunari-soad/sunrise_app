class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
    
    validates :nickname, presence: true 
    validates :email,    presence: true
  has_many  :images
end
