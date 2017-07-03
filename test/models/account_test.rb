require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "account should not save without balance" do
    account = Account.new
    assert account.save,"saved account with Balance of 0"
  end


end
