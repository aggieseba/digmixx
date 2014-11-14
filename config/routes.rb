Rails.application.routes.draw do
  get 'search/show'
  resources :search
  root 'home#index'
end
