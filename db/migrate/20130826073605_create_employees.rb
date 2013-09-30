# -*- coding: utf-8 -*-
class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :profile_number
      t.string :name
      t.date :birthday
      t.string :gender
      t.string :nation
      t.string :marriage_status
      t.string :political_status
      t.date :join_company_date
      t.string :bank_card_number
      t.string :status  #在职状态，"离职"和"在职"
      t.string :id_card_number
      
      t.timestamps
    end
  end
end
