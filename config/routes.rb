Rails.application.routes.draw do
  resources :links
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html




# Routes for the landing page
root to: 'pages#home', as: :home
get '/about', to:'pages#about', as: :about
get '/contact', to:'pages#contact', as: :contact
get "/main", to: "main#index"


get "sign_up", to: "registrations#new"
post "sign_up", to: "registrations#create"



get '/posts/index'
get '/links/index'













end
