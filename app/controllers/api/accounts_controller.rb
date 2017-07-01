class Api::AccountsController < Api::BaseController
  before_action :account_params , only: [:create]
  def show
    accounts = Account.find(params[:id])
    if accounts
      render json: accounts , status: 200
    else
      render json: {account_id: params[:id], message: "Not found."} , status: 404
    end
  end

  def create
    account = Account.new(account_params)
    if account.save
      render json: account , status: 201
    else
      render json: { account: { errors: account.errors } } , status: 422
    end
  end



private

  def account_params
    params.permit(:balance)
  end

end
