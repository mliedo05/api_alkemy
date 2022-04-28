Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post :users, to: 'users#create'
      get :users, to: 'users#index'
      post :login, to: 'auth#create'
      get 'characters_list', to: "characters#characters_list"
      get 'character_detail/:id', to: "characters#character_detail"
      get 'characters', to: "characters#character_find_by"
      get 'movies_list', to: "films#movies"
      get 'movie_details/:id', to: "films#movie_details"
      get 'movies', to: "films#movie_find_by"
      resources :characters, only: %i[create update destroy]
      resources :films, only: %i[show create update destroy]
      resources :genders, only: %i[create update destroy]
    end
  end
end
