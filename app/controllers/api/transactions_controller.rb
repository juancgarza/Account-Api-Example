class Api::TransactionsController < Api::BaseController
  before_action :transaction_params
  def deposit
    transaction = Transaction.new(transaction_params)
    if transaction.save
      render json: transaction , status: 201
    else
      render json: { transaction: { errors: transaction.errors } } , status: 422
    end
  end

  def withdrawal
    transaction = Transaction.new(transaction_params)
    if transaction.save
      render json: transaction , status: 201
    else
      render json: { transaction: { errors: transaction.errors } } , status: 422
    end
  end

private
  def transaction_params
    params.permit(:account_id,:amount)
  end

end
