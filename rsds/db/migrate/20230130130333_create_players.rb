class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.boolean :isCreator

      t.timestamps
    end
  end
end
