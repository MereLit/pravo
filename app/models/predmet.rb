class Predmet < ApplicationRecord
	belongs_to :rozklad
	belongs_to :category
end
