class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :transactions, :transaction, :transactionDate
  end
end
