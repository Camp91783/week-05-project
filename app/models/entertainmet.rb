class Entertainment < ActiveRecord::Base

	validates :name, presence: true

	belongs_to :location
	belongs_to :trip
	has_many :activities


end