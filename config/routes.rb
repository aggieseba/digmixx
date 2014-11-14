Rails.application.routes.draw do
  get 'home/show' => 'home#show'
  get 'search/index'
  get 'search/show'
  resources :home

  resources :search
  resources :mixes
  root 'home#index'

end
