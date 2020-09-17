class CreateBillPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :bill_payments do |t|
      t.decimal :bill_amount
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
