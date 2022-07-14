class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :quantity, :image_url
end
