Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/chairs" => "chairs#index"
  get "/chairs/new" => "chairs#new"
  post "/chairs" => "chairs#create"
  get "/chairs/:id" => "chairs#show"
  get "/chairs/:id/edit" => "chairs#edit"
  patch "/chairs/:id" => "chairs#update"
  delete "/chairs/:id" => "chairs#destroy"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  post "/orders" => "orders#create"
  get "/orders/show/:id" => "orders#show"

  get "/carted_products" => "carted_products#index"
  post "/carted_products/:chair_id" => "carted_products#create"

  delete "/carted_products/:id" => "carted_products#destroy"


end

