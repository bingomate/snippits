class ReportsController < ApplicationController

	def index
		@reports = Report.all
	end
	
	def import
		Report.import(params[:file])
		redirect_to root_url, notice: "CSV Imported"
	end
	
	def run
		
	end
	
	def show
		#@test = Report.find(2)
		@out = Report.where("call_direction = 'O'")
		@outcount = Report.count("call_direction = 'O'")
	end
	
	def delete 
		Report.delete_all
		redirect_to root_url, notice: "All rows deleted"
	end
	
	def outbound
		#@test = Report.find(2)
		@out = Report.where("call_direction = 'O'")
		@outcount = Report.count("call_direction = 'O'")
	end
	
	def inbound
		@in = Report.where("call_direction = 'I'")
		@incount = Report.count("call_direction = 'I'")
	end
end
