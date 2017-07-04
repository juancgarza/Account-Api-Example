require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe "Transaction validations" do
    before(:each) do
      @transaction = Transaction.new(amount: 1,account_id:1)
      @account = Account.create(balance:0)
    end
    it "is not valid without an amount" do
      @transaction.amount = nil
      expect(@transaction).to_not be_valid
    end
    it 'validates amount is not 0' do
      @transaction.amount = 0
      expect(@transaction).to_not be_valid
    end
    it 'validates amount is 1' do
      expect(@transaction.amount).to eq 1
    end
    it 'validates amount is -1' do
      @transaction.amount = -1
      expect(@transaction.amount).to eq -1
    end
  end
end
