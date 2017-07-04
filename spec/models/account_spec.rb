require 'rails_helper'

RSpec.describe Account, type: :model do
  describe Account,"Account validations" do
    before(:each) do
      @account = Account.new(balance:0)
    end

    it 'validates account creation' do
      expect(@account.balance).to eq 0
    end
    it 'validates balance is greater than 0' do
      expect(@account.balance).to be >= 0
    end
  end
end
