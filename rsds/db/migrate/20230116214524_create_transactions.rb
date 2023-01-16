class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.datetime :transaction
      t.integer :value

      t.timestamps
    end
  end
end
