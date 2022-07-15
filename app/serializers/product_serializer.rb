class ProductSerializer < ActiveModel::Serializer
  include ActionView::Helpers
  include Rails.application.routes.url_helpers

  attributes :id, :name, :description, :price, :quantity

  attribute :imageUrl do
    default_url_options[:host] = Rails.application.credentials.bucket_url
    default_url_options[:host] + url_for(@object.cover_url)
  end
end
