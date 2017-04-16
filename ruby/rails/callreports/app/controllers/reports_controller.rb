class ReportsController < ApplicationController

	def index
		@reports = Report.all
	end
	
	def import
		Report.import(params[:file])
		redirect_to root_url, notice: "CSV Imported"
	end
	
	def delete 
		Report.delete_all
		redirect_to root_url, notice: "All rows deleted"
	end
	
	def outbound
		#@test = Report.find(2)
		@out = Report.where("call_direction = 'O'")
		@outcount = Report.where("call_direction = 'O'").count
	end
	
	def inbound
		@in = Report.where("call_direction = 'I'")
		@incount = Report.where("call_direction = 'I'").count
	end
	
			  
	
	
end

/*
Need the ability to mirror how chronicall works in call reporting

1. Standard reports including
	*Inbound calls to user
	*Inbound calls to group (by user ?)
		Contains:
			Total calls
			Number of calls answered
			Percentage of calls answered
			Number of calls to voicemail
			Percentage of calls to voicemail
			User who answered
			Total answer time
			Average answer time
			Total hold time
			Average hold time
			
2. Automatic report builder for weekly reports
	
*/


