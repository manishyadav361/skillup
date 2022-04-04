class Post < ApplicationRecord
  belongs_to :user
  has_many :likes  , dependent: :destroy
  has_many :comments , dependent: :destroy 

  has_one_attached :image , dependent: :destroy
  has_many_attached :docs  , dependent: :destroy

  validates :description , presence: true
end
