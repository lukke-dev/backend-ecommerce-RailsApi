class ProductSerializer < ActiveModel::Serializer
  include ActionView::Helpers
  include Rails.application.routes.url_helpers

  attributes :id, :name, :description, :price, :quantity

  attribute :imageUrl do
    @object.image_url.url
  end
end
