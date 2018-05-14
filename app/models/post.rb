class Post < ApplicationRecord
	belongs_to :user
	has_many :postcomments

	validates :title, length: { in: 1..64 }
	validates :body, length: { in: 10..5012 }
	validates :title, uniqueness: true
	validates :title, presence: true

	has_attached_file :image, styles: { medium: "800x800>", thumb: "300x180>" }, default_url: "default.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
