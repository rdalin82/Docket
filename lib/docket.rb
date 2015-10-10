require 'date'


class Docket
	attr_accessor :dates

	def initialize(datelist=nil)
		@dates = datelist || DateList.new
	end 
end 





