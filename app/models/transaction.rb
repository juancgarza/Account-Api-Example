class Transaction < ApplicationRecord
  validates :amount , presence: true

  belongs_to :account
end
