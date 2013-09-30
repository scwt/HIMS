class Certificate < ActiveRecord::Base
  attr_accessible :award_date, :leavel, :number, :type

  belongs_to :employee
end
