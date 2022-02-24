Rails.application.routes.draw do
  post 'user_token' => 'user_token#create' # This gets a login 'token' from Knock

  get '/users/current' => 'users#current'
  post '/user' => 'user#create'
  put '/room/edit/:id' => 'rooms#update'
  resources :rooms, only: [:create, :index, :destroy, :show, :update]
  resources :questions, only: [:show, :create, :index]
  resources :answers, only: [:create, :show]
  resources :votes, only: [:create, :index]
  resources :games, only: [:create, :show, :index]


  
  
  # get '/questions' => 'questions#index' # for testing
  
  get '/answers' => 'answers#index'
  mount ActionCable.server => '/cable'


  # get '/answers' => 'answers#index'
  
  
end