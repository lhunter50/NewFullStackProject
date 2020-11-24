class Product < ApplicationRecord
  belongs_to :user

  has_one_attached :image

  has_many :product_category
  has_many :category, through: :product_category
  accepts_nested_attributes_for :product_category, allow_destroy: true

  validates :name, :description, :price, presence: true
  validates :price, numericality: {only_integer: true}

end
