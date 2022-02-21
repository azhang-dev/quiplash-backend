Rails.application.routes.draw do
  post 'user_token' => 'user_token#create' # This gets a login 'token' from Knock

  get '/users/current' => 'users#current'

  resources :rooms, only: [:create, :show]
  resources :questions, only: [:show]
  resources :answers, only: [:create, :show]
  resources :votes, only: [:create, :index]
  resources :games, only: [:create, :show]


  resources :conversations, only: [:index, :create]
  resources :messages, only: [:create]
  
  # get '/questions' => 'questions#index' # for testing
  
  get '/answers' => 'answers#index'
  mount ActionCable.server => '/cable'


  
end
