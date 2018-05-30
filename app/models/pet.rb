class Pet < ApplicationRecord
	mount_uploader :image, ImageUploader
	validates_processing_of :image
	validate :image_size_validation
 
private
  def image_size_validation
    errors[:image] << "should be less than 2MB" if image.size > 2.megabytes
  end
end
