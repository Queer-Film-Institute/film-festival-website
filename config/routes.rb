Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'home/index'

  resources :events, only: [:index, :show]
  resources :festival, only: [:index, :show]
  resources :series, only: [:show]

  get '/:id', to: 'pages#show'

  root 'home#index'
end
