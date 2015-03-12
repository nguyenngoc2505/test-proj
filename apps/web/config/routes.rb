get "/", to: "users#index"
resources :users, only: :index
resources :posts, only: [:index, :show]
