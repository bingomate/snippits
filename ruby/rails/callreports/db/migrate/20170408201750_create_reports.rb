class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
    
	  t.datetime		:call_start
	  t.string			:call_duration
	  t.integer		 	:ring_duration
	  t.string			:caller
	  t.string		    :call_direction
	  t.string		    :called_number
	  t.string		 	:dialed_number
	  t.string			:account
	  t.string			:is_internal
	  t.string			:call_id
	  t.string			:continuation
	  t.string			:party_1_device
	  t.string			:party_1_name
	  t.string		 	:party_2_device
	  t.string			:party_2_name
	  t.integer			:hold_time
	  t.integer			:park_time
	  
	  t.timestamps
    end
  end
end
