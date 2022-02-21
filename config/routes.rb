Rails.application.routes.draw do
  post 'user_token' => 'user_token#create' # This gets a login 'token' from Knock

  get '/users/current' => 'users#current'

  post '/user' => 'user#create'


  get '/questions' => 'questions#index' # for testing

  get '/answers' => 'answers#index'
  
  
end
