class SetDefaultValueForUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :money_to_be_paid, :decimal, default: 0.0
    change_column :users, :pending, :boolean, default: false
  end
end
