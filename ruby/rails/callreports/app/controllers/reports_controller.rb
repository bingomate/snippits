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
		@out = Report.where("call_direction = 'O'")
		@outcount = Report.where("call_direction = 'O'").count
	end
	
	def inbound
		@in = Report.where("call_direction = 'I'")
		@incount = Report.where("call_direction = 'I'").count
	end
	
	def inboundtogroup
		@brokers = Report.where("called_number = '8662'")
		.or(Report.where("party_1_name = 'Brokers'"))
		.where("call_direction = 'I'")
		
		@total = @brokers.count
		@duration = @brokers.map {|i| i.call_duration} 
		
		sum = 0
		for x in @duration do
		x.gsub! ':', ''
		end
		for x in 0..@duration.length do
				sum += @duration[x].to_i
		end
		
		@calltotals = sum * 0.6 / 60
				
		@totalring = @brokers.sum(:ring_duration)
		
	end
	
	
	
	
	
			  
	
	
end



