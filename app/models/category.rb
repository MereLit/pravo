class Category < ApplicationRecord
	has_many :predmets
	belongs_to :rozklad
end
