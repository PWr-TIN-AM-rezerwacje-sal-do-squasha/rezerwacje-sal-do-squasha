class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :userName
      t.string :userSurname
      t.string :userEmail
      t.date :userBirthDate
      t.string :userPhoneNumber

      t.timestamps
    end
  end
end
