Rails.application.routes.draw do
  get 'search/index'
  get 'search/show'
  resources :home

  get 'search/:tag', to: 'search#show', as: :tag
  resources :search
  resources :mixes
  root 'home#index'

end
