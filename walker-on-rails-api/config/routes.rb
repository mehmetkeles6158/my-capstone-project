Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/walks" => "walks#index"
  get "/walks/:id" => "walks#show"
  post "/walks" => "walks#create"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  patch "/users/:id" => "users#update"

end
