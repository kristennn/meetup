Rails.application.routes.draw do
  devise_for :users
  root "meets#index"
  resources :meets
end
