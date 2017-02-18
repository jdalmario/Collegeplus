class Event < ApplicationRecord

	searchable do
		text :title, :details, :requirement
	end

	validates :title, :details, :eventdate, :applicationstart, :applicationend, :requirement, :link, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.00}

	validate :application_period_error, :eventdate_error

	def application_period_error
		if applicationend < applicationstart
			errors.add(:applicationend, "Cannot have application end before the application start!")
		end
	end

	def eventdate_error
		if applicationend > eventdate
			errors.add(:eventdate, "You can't have an event when the application is not yet over")
		end
	end
end
