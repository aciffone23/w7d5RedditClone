Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users do 
    resources :subs, except: [:index, :show]
  end

  resource :session

  resources :subs, only: [:index, :show]


end
