class Event < ApplicationRecord

	validates :etupe, inclusion: %w(Концерт Екскурсія Вистава Збори)
	validates :ecost, inclusion: %w(Безкоштовний Платний)





end
