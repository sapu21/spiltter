class AddPaidByToBillPayments < ActiveRecord::Migration[5.0]
  def change
    add_column :bill_payments, :paid_by, :string
  end
end
