require 'minitest/autorun'
require '../lib/docket'

describe DocketDate do 
	let(:ddate) do 
		d = DocketDate.new
		d.set_date(2015, 1, 2)
		d
	end 
	let(:setdate) do 
		d = DocketDate.new 
		d.set_event({
			:by_user=>"Rob", 
			:for_user=>"Chris", 
			:event_type=>"Trial", 
			:event_name=>"final date certain"}) do 
			  set_date(2016, 10, 12)
			end 
		d
	end 


		it "should have users, date, time, event type and name" do 
			ddate.must_respond_to :by_user
			ddate.must_respond_to :for_user
			ddate.must_respond_to :event_type
			ddate.must_respond_to :event_name
			ddate.must_respond_to :date
			ddate.must_respond_to :time
			ddate.must_respond_to :set_event
			ddate.must_respond_to :get_event
		end 

		it "should have a date to show" do 
			assert_equal "1/2/2015", ddate.get_date
		end 

		it "should set an event and get an event" do 
			refute setdate.by_user.nil?
			refute setdate.for_user.nil?
			refute setdate.event_name.nil?
			refute setdate.event_type.nil?
			refute setdate.get_event.nil? 
		end 




	describe DateList do 
		let(:dlist) { DateList.new }

		it "should have a list of dates" do 
			assert_respond_to dlist, :each 
		end 


		describe Docket do 
			let (:docket) { Docket.new } 

			it "should have a should display all docket dates" do 
				assert_respond_to docket.dates, :each 
			end 
		
	  end 
			
	end 
end 