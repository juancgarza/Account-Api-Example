require 'test_helper'

class Api::AccountsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @account = accounts(:one)
  end
  test "should show account" do
    @account
    get api_account_url , params: {id: 1 }
    assert_response :success
  end

end
