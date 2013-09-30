class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.date :signed_date
      t.date :deadline
      t.string :number
      t.string :type

      t.timestamps
    end
  end
end
