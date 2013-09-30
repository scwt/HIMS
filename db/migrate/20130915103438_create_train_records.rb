class CreateTrainRecords < ActiveRecord::Migration
  def change
    create_table :train_records do |t|
      t.date :start_date
      t.string :end_date
      t.string :institution
      t.text :content

      t.timestamps
    end
  end
end
