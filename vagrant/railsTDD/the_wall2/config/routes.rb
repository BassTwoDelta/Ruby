Rails.application.routes.draw do

  get '' => 'users#index'
  get "users/new" => 'users#new', as: 'new_user'
  post '/login' => 'users#login'
  get '/destroy_session' => 'users#destroy'
  


  get '/messages' => 'messages#index', as: 'messages'
  post '/messages/post' => 'messages#create'

end
