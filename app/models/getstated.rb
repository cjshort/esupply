class Getstated < ActiveRecord::Base
	validates :fullname, :phonenumber, :emailaddress, presence: true
end
