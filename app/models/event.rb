class Event < ApplicationRecord

	validates :title, :details, :eventdate, :applicationstart, :applicationend, :requirement, :link, presence: true

	validate :application_period_error

	def application_period_error
		if applicationend < applicationstart
			errors.add(:applicationend, "Cannot have application end before the application start!")
		end
	end

	# def eventdate_error
	# end

end
