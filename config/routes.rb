Rails.application.routes.draw do
  post '/current_user', to: 'application#find_current_user'
  
  namespace :api do
    namespace :v1 do
        get '/users', to: 'users#index'
        patch '/users/:id', to: 'users#update'
        post '/login', to: 'auth#create'
        post '/signup', to: 'users#create'
        get '/exercises', to: 'exercises#index'
        post '/exercises', to: 'exercises#create'
    end
  end
end
