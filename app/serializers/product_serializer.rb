class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :quantity

  attribute :imageUrl do
    @object.image_url
  end
end
