Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do
  		# resources :users, :workout_sessions
        get '/users', to: 'users#index'
        get '/users/:id', to: 'users#show'
  	end
  end
end
