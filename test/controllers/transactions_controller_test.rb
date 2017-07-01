require 'test_helper'

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get deposit" do
    get transactions_deposit_url
    assert_response :success
  end

  test "should get withdrawal" do
    get transactions_withdrawal_url
    assert_response :success
  end

end
