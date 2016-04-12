class Activity < ActiveRecord::Base

	validates :name, presence: true
	validates :cost, presence: true

	belongs_to :location
	has_many :location


end