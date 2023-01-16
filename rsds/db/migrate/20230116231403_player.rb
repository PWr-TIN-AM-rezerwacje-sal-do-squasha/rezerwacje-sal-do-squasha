class Player < ActiveRecord::Migration[7.0]
  def change
    create_table :player, id: false do |t|
      t.belongs_to :users, index: true
      t.belongs_to :reservations, index: true
      t.boolean :isCreator 
    end
  end
end
