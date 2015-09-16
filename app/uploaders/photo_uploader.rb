# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  include Sprockets::Rails::Helper

  storage :fog

  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end

  def cache_dir
    "#{Rails.root}/tmp/uploads"
  end

  version :index_size do  
    process :resize_to_fill => [1700, 955]
  end

  version :show_size do  
    process :resize_to_fill => [1700, 955]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
    
end
