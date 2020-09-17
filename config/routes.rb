Rails.application.routes.draw do
  root to: "users#index"
  resources :bill_payments
  resources :members
  resources :groups
  resources :users do
    member do
     get 'update_pending'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
