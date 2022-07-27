class ProductSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper
  attributes :id, :name, :description, :quantity, :images, :price, :category

  def images
    @object.images_urls
  end

  def category
    @object.category.name
  end
end
