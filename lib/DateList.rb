class DateList
	attr_accessor :list 
	def initialize(list=nil)
		@list = list || Array.new 
	end 
	def each
		@list.each do |item| 
			puts item.get_event
		end 
	end 
	def add_event(docket_date=nil)
		@list << docket_date || DocketDate.new
	end 
end 
