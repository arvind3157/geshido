Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_for :users
  root to: "home#index"
  get '/text-to-text', to: 'text#process_text'

  get '/about', to: 'home#about'

end
