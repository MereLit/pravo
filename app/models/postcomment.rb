class Postcomment < ApplicationRecord
	belongs_to :user
	belongs_to :post
<<<<<<< HEAD
=======

>>>>>>> 0e85ce8e7b0a0ba37c4dc502d064aeba91c93b35
	validates :text, presence: true
	validates :text, length: { in: 4..256 }
end
