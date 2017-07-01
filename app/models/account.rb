class Account < ApplicationRecord
  validates :balance , presence: true
  has_many :transactions



end
