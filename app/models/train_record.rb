class TrainRecord < ActiveRecord::Base
  attr_accessible :content, :end_date, :institution, :start_date
end
