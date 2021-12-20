Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/walks" => "walks#index"
  get "/walks/:id" => "walks#show"
  post "/walks" => "walks#create"

  post "/users" => "users#create"
  get "/users" => "users#index"
  patch "/users" => "users#update"
  post "/sessions" => "sessions#create"


  get "/parks" => "parks#index"


end
