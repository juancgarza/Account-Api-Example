Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :accounts  , defaults: { format: :json} do
  #Transaction Deposit Endpoint
  post '/deposit', to: 'transactions#deposit'
  #Transaction Withdrawal Endpoint
  post '/withdrawal', to: 'transactions#withdrawal'
end


end
