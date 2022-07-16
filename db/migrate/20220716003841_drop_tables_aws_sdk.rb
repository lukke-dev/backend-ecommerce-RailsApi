class DropTablesAwsSdk < ActiveRecord::Migration[6.1]
  def change
    drop_table :active_storage_variant_records, force: :cascade
    drop_table :active_storage_blobs, force: :cascade
    drop_table :active_storage_attachments, force: :cascade
  end
end
