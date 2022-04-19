Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :characters, only: %i[show create update destroy]
      resources :films, only: %i[show create update destroy]
    end
  end
end
