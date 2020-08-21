Rails.application.routes.draw do

  get '' => "application#index"
  get '/main' => 'sessions#index'
  post '/sessions' =>"sessions#create"
  delete '/sessions/destroy' => "sessions#destroy", as: "destroy_session"

  post '/users' => 'users#create'
  get '/users/:id'=> 'users#show'

  get '/bright_ideas' => 'posts#index', as: "bright_ideas"
  post '/posts' => "posts#create"
  delete '/posts/:id/destroy' => "posts#destroy", as: "destroy_post"

  get 'bright_ideas/:id' => "likes#show"
  post '/posts/:id/like' => "likes#create", as: "like_post"


end
