Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :messages
      get '/chatroom', :to => 'messages#all_messages_index'
      resources :users do
        resources :messages
      end
    end
  end
end
