Rails.application.routes.draw do
  post 'user_token' => 'user_token#create' # This gets a login 'token' from Knock

  get '/users/current' => 'users#current'

  resources :rooms, only: [:create, :show]
  resources :questions, only: [:show]
  resources :answers, only: [:create, :show]
  resources :votes, only: [:create, :index]
  resources :games, only: [:create, :show]

  mount ActionCable.server => '/cable'

<<<<<<< HEAD
  resources :questions
 
  resources :answers
  
  mount ActionCable.server => '/cable'
=======
  # get '/questions' => 'questions#index' # for testing

<<<<<<< HEAD
  get '/answers' => 'answers#index'
>>>>>>> 2b33c0b4cd581dcdc769b9657518adac32fb92ef
=======
  # get '/answers' => 'answers#index'
>>>>>>> fb453a6657e4b31fb6ddadf75733685bf0428658
  
  
end
