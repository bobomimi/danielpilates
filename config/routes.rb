Rails.application.routes.draw do
  get 'pages/about'

  get 'pages/products'

  get 'pages/index'
  root 'freelancers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contacts, only: [:new, :create]
end
