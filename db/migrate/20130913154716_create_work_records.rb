class CreateWorkRecords < ActiveRecord::Migration
  def change
    create_table :work_records do |t|
      t.date :start_date
      t.date :end_date
      t.string :project_name
      t.string :project_scale
      t.string :position
      t.string :profession
      
      t.references :employee
      t.timestamps
    end
  end
end
