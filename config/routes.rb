Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  get '/reviews/new', to: 'reviews#new'
end
