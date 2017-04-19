class Report < ApplicationRecord

	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Report.create!(Hash[row])
			end
	end
	
	
end
