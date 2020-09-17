class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.decimal :money_to_be_paid
      t.boolean :pending

      t.timestamps
    end
  end
end
