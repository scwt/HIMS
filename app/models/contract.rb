class Contract < ActiveRecord::Base
  attr_accessible :deadline, :number, :signed_date, :type
end
