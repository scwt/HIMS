class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.string :number
      t.date :award_date
      t.string :type
      t.string :leavel
      t.references :employee
      t.timestamps
    end
  end
end
