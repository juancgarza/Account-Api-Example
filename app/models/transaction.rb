class Transaction < ApplicationRecord
  validates :amount , presence: true
  belongs_to :account
  validates :amount , numericality: true
  validates :amount , numericality: {only_integer: true}
  validates :amount , numericality: {greater_than_or_equal_to: -1 , 
                                      less_than_or_equal_to: 1 }
  validate :reject_zero_value


  private
  def reject_zero_value
    if self.amount == 0
      errors.add(:amount,"Value must not be equal to 0")
    end
  end
end
