Rails.application.routes.draw do
  post 'user_token' => 'user_token#create' # This gets a login 'token' from Knock

  get '/users/current' => 'users#current'


  get '/questions' => 'questions#index' # for testing
  get '/questions/game_data' => 'questions#game_data'
  
end
