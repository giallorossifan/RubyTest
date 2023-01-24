Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html




# Routes for the landing page
root to: 'pages#home', as: :home
get '/about', to:'pages#about', as: :about
get '/contact', to:'pages#contact', as: :contact



get '/posts/index'












end
