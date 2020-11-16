class User < ApplicationRecord
  has_many :product
  has_many :order

  validates :username, :description, presence: true
end
