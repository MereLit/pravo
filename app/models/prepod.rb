class Prepod < ApplicationRecord
	validates :name, length: { in: 1..64 }
	validates :description, length: { in: 10..5012 }
	validates :name, uniqueness: true
	validates :name, presence: true
end
