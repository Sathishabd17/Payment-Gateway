class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :card_number, limit: 8
      t.string :expiration_date
      t.integer :cvc
      t.string :card_owner
    end
  end
end
