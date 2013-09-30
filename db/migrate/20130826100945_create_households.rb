class CreateHouseholds < ActiveRecord::Migration
  def change
    create_table :households do |t|
      t.string :type
      t.string :address
      
      t.references :employee
      t.timestamps
    end
  end
end
