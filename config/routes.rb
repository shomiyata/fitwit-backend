Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do
  		resources :users, :workout_sessions, :exercises
        get '/users', to: 'users#index'
        get '/users/:id', to: 'users#show'
        post '/login', to: 'auth#create'
        post '/signup', to: 'users#create'
        get '/exercises', to: 'exercises#index'
        post '/exercises', to: 'exercises#create'
  	end
  end
end
