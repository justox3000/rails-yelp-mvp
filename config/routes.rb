Rails.application.routes.draw do

  root 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  post 'restaurants', to: 'restaurants#create'

  get 'restaurants/:id/edit', to: 'restaurants#edit'

  get 'reviews/new'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants
  resources :restaurants do
    resources :reviews, only: [:new]
  end
end
