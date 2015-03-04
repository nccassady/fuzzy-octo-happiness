class Company < ActiveRecord::Base
	has_many :alternatives, dependent: :destroy
	validates_presence_of :name

	def to_s
		name
	end
end
