class AccountsController < BaseController
  def show
    accounts = Account.find(params[:id])
    if accounts
      render json: accounts , status: 200
    else
      render json: {account_id: params[:id], message: "Not found."} , status: 404
    end
  end

  def create
    def create
      account = Account.new(account_params)
      if account.save
        render json: activity_log , status: 201
      else
        render json: { activity_log: { errors: activity_log.errors } } , status: 422
      end
    end
  end


private

def account_params
    params.permit.require(:balance)
end

end
