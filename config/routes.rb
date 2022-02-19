Rails.application.routes.draw do
  post 'user_token' => 'user_token#create' # This gets a login 'token' from Knock

  get '/users/current' => 'users#current'


  resources :questions
 
  resources :answers
  
  mount ActionCable.server => '/cable'
  
  
end
