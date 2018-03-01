class Post < ApplicationRecord
	has_many :postcomments, dependent: :destroy
	 
	validates :title, length: { in: 1..20 }
	validates :body, length: { in: 10..5012 }
	validates :title, uniqueness: true
	validates :title, presence: true

end
