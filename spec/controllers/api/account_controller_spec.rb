require 'rails_helper'

RSpec.describe Api::AccountsController, type: :controller do

  describe 'get#SHOW' do
    before do
      get :show , params: {id: account.id}
    end
    let(:account) {Account.create(balance: "0")}

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'get #CREATE' do
    before do
      get :create
    end

    let(:account) {Account.create(balance: "0")}

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

end
