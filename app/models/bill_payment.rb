class BillPayment < ApplicationRecord
  belongs_to :group
  after_create :calculate_split

  def calculate_split
    amount = self.bill_amount
    members_count = self.group.users.count
    members = self.group.users
    split_amount = (amount/members_count).to_d
    members.each do |member|
      member.money_to_be_paid = split_amount
      member.pending = true
      member.save!
    end
  end
end
