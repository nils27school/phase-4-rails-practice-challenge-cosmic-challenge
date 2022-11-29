Rails.application.routes.draw do
  get 'missions/create'
  get 'planets/index'
  # get 'scientists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :scientists
  # , only: [:index, :show, :create, :update]
  resources :planets, only: [:index]
  resources :missions, only: [:create]
end
