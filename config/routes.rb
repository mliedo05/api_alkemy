Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post :users, to: 'users#create'
      get :users, to: 'users#index'
      post :login, to: 'auth#create'
      resources :characters, only: %i[show create update destroy]
      resources :films, only: %i[show create update destroy]
    end
  end
end
