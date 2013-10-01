class Employee < ActiveRecord::Base
  attr_accessible :profile_number,:birthday, :gender, :join_company_date,
  :name,:nation, :political_status,:bank_card_number,
  :status,:id_card_number,:marriage_status
  
  validates :name ,:gender,:presence => true
  #one-to-one association
  has_one  :household, :dependent => :destroy
  #has_one :skill, :dependent => :destroy
  #one-to-many association
  has_many :certificates,:dependent => :destroy
  has_many :educations, :dependent => :destroy
  has_many :work_records, :dependent => :destroy

  # many-to-many associatons
  
  #belongs_to :project
end
