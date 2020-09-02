Rails.application.routes.draw do

  get '' => "sessions#index"
  post 'user' => "users#create"
  get 'user/:id/edit' => "users#edit", as: "edit_profile"
  post 'user/:id' => "users#update"
  post 'sessions/login' => "sessions#create"
  get 'events' => "events#index", as: "events"
  post 'events' => "events#create"
  delete 'destroy' => "sessions#destroy", as: "destroy_session"
  delete 'events/:id/destroy' => "events#destroy", as: "destroy_event"
end
