Rails.application.routes.draw do

  get '' => "sessions#index"
  post 'user' => "users#create"
  get 'user/:id/edit' => "users#edit"
  post 'sessions/login' => "sessions#create"
  get 'events' => "events#index"
  post 'events' => "events#create"
  get '/destroy' => "sessions#destroy"
end
