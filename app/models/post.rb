class Post < ApplicationRecord
	belongs_to :user
	has_many :postcomments

	validates :title, length: { in: 1..64 }
<<<<<<< HEAD
	validates :body, length: { in: 10..54000 }
	validates :title, uniqueness: true
	validates :title, presence: true

	has_attached_file :image, styles: { medium: "1368x990>", thumb: "300x180>" }, default_url: "default.png"
=======
	validates :body, length: { in: 10..5012 }
	validates :title, uniqueness: true
	validates :title, presence: true

	has_attached_file :image, styles: { medium: "800x800>", thumb: "300x180>" }, default_url: "default.png"
>>>>>>> 0e85ce8e7b0a0ba37c4dc502d064aeba91c93b35
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
