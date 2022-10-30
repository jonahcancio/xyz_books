Rails.application.routes.draw do
  namespace :api do
    get 'books/query', to: 'books#query'
    resources :books, only: [:index, :show]
  end
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "frontend#index"

  get '*path', to: "frontend#index"
end
