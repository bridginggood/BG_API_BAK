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

class Business < ActiveRecord::Base
	attr_accessible(:bid, :name, :address, :latitude, :longitude, :cid);

	validates(:name, :presence => true);
	validates(:bid, :presence => true,
									:uniqueness => true);
	
end
