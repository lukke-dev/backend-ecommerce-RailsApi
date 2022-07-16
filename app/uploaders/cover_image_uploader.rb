class CoverImageUploader < CarrierWave::Uploader::Base
  storage :aws

  def store_dir
    "uploads/images/#{model.id}"
  end

  def extension_allowlist
    %w(jpg jpeg gif png)
  end
end
