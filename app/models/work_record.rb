class WorkRecord < ActiveRecord::Base
  attr_accessible :end_date, :position, :profession, :project_name, :project_scale, :start_date

  belongs_to :employee
end
