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
					 .or(Report.where("party_1_device = 'E2114'"))
					 .or(Report.where("party_1_device = 'E2147'"))
					 .or(Report.where("party_1_device = 'E2113'"))
					 .or(Report.where("party_1_name = 'Brokers'"))
					 .where("call_direction = 'I'")

		@totalcall = @brokers.count
		@totalduration = calc_callduration
		@totalring = convert_seconds(@brokers.sum(:ring_duration))
		@totalhold = convert_seconds(@brokers.sum(:hold_time))
		@totalpark = convert_seconds(@brokers.sum(:park_time))
		@avgduration = calc_avgduration
		@avgring = convert_seconds(@brokers.average(:ring_duration))
		@avghold = convert_seconds(@brokers.average(:hold_time))
		@avgpark = convert_seconds(@brokers.average(:park_time))

	end

	private

	def convert_seconds(seconds)
		Time.at(seconds).utc.strftime("%H:%M:%S")
	end

	def calc_callduration
		@duration = @brokers.map {|i| i.call_duration}
		@seconds = @duration.map {|x| x.split(':').map {|a| a.to_i}.inject(0) { |a, b| a * 60 + b}}
		convert_seconds(@seconds.sum)

	end

	def calc_avgduration
		@avgduration = @brokers.map {|i| i.call_duration}
		@avgseconds = @avgduration.map {|x| x.split(':').map {|a| a.to_i}.inject(0) { |a, b| a * 60 + b}}
    @calc_avg = @avgseconds.sum / @avgduration.count
		convert_seconds(@calc_avg)

	end




end
