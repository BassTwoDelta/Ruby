Rails.application.routes.draw do
  
  get '' => "users#index"
  post 'create_user' => "users#create"
  get 'welcome' => "users#welcome"
  post 'welcome/calculate' => "users#calculate"
  get 'destroy' => "users#destroy_session"
  post 'login' => "users#login"

end
