Rails.application.routes.draw do
  post 'user_token' => 'user_token#create' # This gets a login 'token' from Knock

  get '/users/current' => 'users#current'
  post '/user' => 'user#create'
  get '/user/:id/questionbanks' => 'questionbanks#user_question_banks'
  
  put '/room/edit/:id' => 'rooms#update'
  put '/room/start/:id' => 'rooms#start'
  resources :rooms, only: [:create, :index, :destroy, :show, :update]
  resources :questions, only: [:show, :create, :index]
  resources :answers, only: [:create, :show]
  resources :votes, only: [:create, :index]
  resources :games, only: [:create, :show, :index]
  # post '/questionbanks' => "questionbanks#create"
  post '/questionbanks/createquestions' => "questionbanks#create_question"
  resources :questionbanks, only: [:create, :index, :show]
  

  
  
  # get '/questions' => 'questions#index' # for testing
  
  get '/answers' => 'answers#index'
  mount ActionCable.server => '/cable'


  # get '/answers' => 'answers#index'
  
  
end