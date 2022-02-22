Rails.application.routes.draw do
  post 'user_token' => 'user_token#create' # This gets a login 'token' from Knock

  get '/users/current' => 'users#current'
  post '/user' => 'user#create'

  resources :rooms, only: [:create, :index, :destroy]
  resources :questions, only: [:show]
  resources :answers, only: [:create, :show]
  resources :votes, only: [:create, :index]
  resources :games, only: [:create]

<<<<<<< HEAD
=======

  
  
  # get '/questions' => 'questions#index' # for testing
  
  get '/answers' => 'answers#index'
>>>>>>> 8c7a3bc63529537cf47dd7e44ab35adf94e59d69
  mount ActionCable.server => '/cable'


  # get '/answers' => 'answers#index'
  
  
end