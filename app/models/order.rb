class Order < ApplicationRecord
  belongs_to :user
  has_many :products, through: :order_product, dependent: :destroy
end
