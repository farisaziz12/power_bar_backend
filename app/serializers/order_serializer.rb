class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :user_id, :paid, :completed
end
