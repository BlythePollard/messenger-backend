Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :messages
      resources :users do
        resources :messages
      end
    end
  end
  mount ActionCable.server => '/cable'
end
