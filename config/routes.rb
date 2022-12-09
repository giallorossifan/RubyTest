Rails.application.routes.draw do
  # routes for landing page setup is => root 'controller#view'
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts

end
