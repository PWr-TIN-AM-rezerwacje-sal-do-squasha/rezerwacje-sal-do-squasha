class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :companyName
      t.integer :companyNIP
      t.string :city
      t.string :street
      t.integer :buildingNumber
      t.string :localNumber
      t.string :postalCode

      t.timestamps
    end
  end
end
