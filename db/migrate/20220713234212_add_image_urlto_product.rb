class AddImageUrltoProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :image_url, :string
  end
end
