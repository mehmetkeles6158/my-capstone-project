Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/walks" => "walks#index"
  get "/walks/:id" => "walks#show"
  post "/walks" => "walks#create"

end
