class AddBillPurposeToBillPayments < ActiveRecord::Migration[5.0]
  def change
    add_column :bill_payments, :bill_purpose, :string
  end
end
