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

		@totalcall = @brokers.count
		@totalduration = calc_callduration
		@totalring = @brokers.sum(:ring_duration)
		@totalhold = @brokers.sum(:hold_time)
		@totalpark = @brokers.sum(:park_time)
		@avgduration = calc_avgduration
		@avgring = @brokers.average(:ring_duration)
		@avghold = @brokers.average(:hold_time)
		@avgpark = @brokers.average(:park_time)

	end

	private
	def calc_callduration
		@duration = @brokers.map {|i| i.call_duration.gsub ':', ''}
		@talktotal = @duration.map.sum {|x| x.to_i}
		@total = Time.at(@totaltalk).utc.strftime("%H:%M:%S")
		return @total
	end

	def calc_avgduration

	end




end
