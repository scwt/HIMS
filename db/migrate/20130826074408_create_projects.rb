class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :scale
      t.date :start_date
      t.date :end_date
      t.boolean :finished
      t.timestamps
    end
  end
end
