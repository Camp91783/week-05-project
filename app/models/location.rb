class Location < ActiveRecord::Base

	validates :name, presence: true

	belongs_to :trip
	has_many :actvities
	
end