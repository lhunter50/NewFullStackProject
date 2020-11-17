class Product < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  validates :name, :description, :price, presence: true
  validates :price, numericality: {only_integer: true}
end
