
require '../lib/docket'
require '../lib/DocketDate'
require '../lib/DateList'
require 'faker' 
dlist = DateList.new
	1000.times do 
	date = DocketDate.new
	date.set_event({
		:by_user=> "#{Faker::Name.name}",
		:for_user=>"#{Faker::Name.name}", 
		:event_type=>"#{Faker::Lorem.word}", 
		:event_name=>"#{Faker::Lorem.words.join(" ")}"})do 
		set_date(Faker::Number.between(2015, 2018), Faker::Number.between(1, 12), Faker::Number.between(1, 28))
	end 
		dlist.add_event(date)
end

dlist.each 