Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

namespace :api , path:'/api', defaults: { format: :json } do
  resources :accounts , only: [:create,:show] do
    resources :transactions , only: [:deposit,:withdrawal]
  end
end


end
