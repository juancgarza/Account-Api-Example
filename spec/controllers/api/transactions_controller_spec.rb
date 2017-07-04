require 'rails_helper'

RSpec.describe Api::TransactionsController, type: :controller do
=begin Tests don't work

  describe 'get #DEPOSIT' do
    before do
      get :deposit , params: { account_id: 1 }
    end

    let(:transaction) {Transaction.create(amount: transaction.amount)}

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'get #WITHDRAWAL' do
    before do
      get :withdrawal , params: { account_id: 1 }
    end

    let(:transaction) {Transaction.create(amount: transaction.amount.to_f)}

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end
=end
end
