class Project < ActiveRecord::Base
  attr_accessible :name, :scale,:start_date,:end_date,:finished

  # has_many employees
  has_many :employees
end
