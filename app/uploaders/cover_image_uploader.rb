class CoverImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  process resize_to_fit: [300, 350]
  storage :aws

  def store_dir
    "uploads/images/#{model.id}"
  end

  def extension_allowlist
    %w(jpg jpeg gif png)
  end
end
