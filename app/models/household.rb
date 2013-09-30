class Household < ActiveRecord::Base
  attr_accessible :address, :type
  
  belongs_to :employee
end
