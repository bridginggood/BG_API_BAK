# == Schema Information
#
# Table name: businesses
#
#  id         :integer(4)      not null, primary key
#  bid        :string(255)
#  name       :string(255)
#  address    :string(255)
#  latitude   :float
#  longitude  :float
#  cid        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Business do
 	#Create sample attribute for this test
	before(:each) do
		@attr = {:bid =>"X001", :name=>"xxxxx", :address=>"xxxxxxx", :latitude=>0.1, :longitude=>-0.1, :cid=>"z001"}
	end

	#Test to check if valid business attribute can be created.
	it "should create new valid business attribute" do
		Business.create!(@attr)
	end

	#Test to check if name field is blank
	it "should require name that is not blank" do
		no_name_business = Business.new(@attr.merge(:name => ""))
		no_name_business.should_not be_valid
	end

	#Test to check if bid does not duplicate
	it "should have unique bid" do
		Business.create!(@attr)
		business_with_duplicate_bid = Business.new(@attr)
		business_with_duplicate_bid.should_not be_valid
	end
end
