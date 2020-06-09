class OrderProductsSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :product_id
end
