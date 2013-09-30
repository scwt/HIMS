class Education < ActiveRecord::Base
  attr_accessible :degree, :diploma,
  :major, :school,:highest,:start_end_time
  
  
  validates_presence_of :school,:diploma,:major,:start_end_time
  
  belongs_to :employee
  
end
