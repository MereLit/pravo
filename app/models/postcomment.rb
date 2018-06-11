class Postcomment < ApplicationRecord
	belongs_to :user
	belongs_to :post
	validates :text, presence: true
	validates :text, length: { in: 4..256 }
end
