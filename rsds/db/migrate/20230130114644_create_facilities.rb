class CreateFacilities < ActiveRecord::Migration[7.0]
  def change
    create_table :facilities do |t|
      t.references :company, null: false, foreign_key: true
      t.string :facilityName
      t.string :city
      t.string :street
      t.string :buildingNumber
      t.string :localNumber
      t.string :postalCode
      t.time :openingTime
      t.time :closingTime
      t.integer :houerlyPrice

      t.timestamps
    end
  end
end
