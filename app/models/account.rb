class Account < ActiveRecord::Base
  validates :balance , presence: true
  validates :balance, numericality: { greater_than_or_equal_to: 0 }
  has_many :transactions
end
