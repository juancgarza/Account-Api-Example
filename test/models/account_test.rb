require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "account should not save without balance" do
    account = Account.new
    assert_not account.save,"saved account without balance"
  end


end
