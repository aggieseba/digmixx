Rails.application.routes.draw do
  get 'home/show' => 'home#show'
  get 'search/index'
  get 'search/show'
  resources :home

  get 'search/:mixname', to: 'search#show'

  get 'search/:tag', to: 'search#show', as: :tag
  resources :search
  resources :mixes
  root 'home#index'

end
