class DocketDate
	attr_accessor :event_type, :event_name, :time, :date, :by_user, :for_user
	
	def set_date(year, month, day)
		@date = Date.new(year, month, day)
	end 

	def get_date
		unless @date.nil? 
			"#{date.mon}/#{date.mday}/#{date.year}"
		else 
			"no date" 
		end 
	end 

	def set_event(args, &block)
		@event_type = args[:event_type]
		@event_name = args[:event_name]
		@by_user = args[:by_user]
		@for_user = args[:for_user]
		instance_eval(&block)
	end 
	def get_event 
		items = self.instance_variables
		items.each do |var|
			puts "#{var.to_s[1, var.length]}: #{self.instance_variable_get(var)}"
		end 
	end 
end