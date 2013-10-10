class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :start_end_time
      t.string :school
      t.string :highest
      t.string :diploma
      t.string :major
      t.string :degree
      
      t.references :employee
      t.timestamps
    end
  end
end
