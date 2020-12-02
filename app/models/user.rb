class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :product
  has_many :order

  has_many :province_user
  has_many :province, through: :province_user
  accepts_nested_attributes_for :province_user, allow_destroy: true

end
