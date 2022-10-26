Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  resources :contacts, only: [:new, :create]
  get '/contact', to: 'contacts#new', as: 'contact'
  get 'contact/sent', to: 'contacts#sent'
end
