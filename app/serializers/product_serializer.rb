class ProductSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper
  attributes :id, :name, :description, :quantity, :images, :price, :category

  def images
    @object.images_urls
  end

  def price
    number_to_currency(@object.price, precision: 2, unit: "R$")
  end

  def category
    @object.category.name
  end
end
