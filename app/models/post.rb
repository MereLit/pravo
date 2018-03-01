class Post < ApplicationRecord
	has_many :postcomments, dependent: :destroy
	 
	validates :title, length: { in: 1..20 }
	validates :body, length: { in: 10..5012 }
	validates :title, uniqueness: true
	validates :title, presence: true

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
