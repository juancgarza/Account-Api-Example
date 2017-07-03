require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest

  test "should show account" do
    account = Account.new(balance: 0 ,id: 1)
    get api_account_url , params: {id: 1 }
    assert_response :success
  end

end
