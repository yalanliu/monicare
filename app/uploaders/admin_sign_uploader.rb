class AdminSignUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process resize_to_fit: [800, 800]

  version :thumb do
    process resize_to_fit: [300, 300]
  end

  version :small_thumb do
    process resize_to_fit: [400, 200]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
