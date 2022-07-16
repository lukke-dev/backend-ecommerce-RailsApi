class ProductSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper
  attributes :id, :name, :description, :quantity

  attribute :imageUrl do
    @object.image_url.url
  end

  attribute :price do
    number_to_currency(@object.price, precision: 2, unit: "R$")
  end
end
