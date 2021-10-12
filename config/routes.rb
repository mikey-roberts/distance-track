Rails.application.routes.draw do
  get '/users', to: "users#get_users"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
