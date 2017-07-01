class Transaction < ApplicationRecord
  validates :amount , presence: true
  validates :amount , numericality: {equals_to: 1 || -1 }
  belongs_to :account
end
