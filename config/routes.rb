Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/chairs" => "chairs#index"
  get "/chairs/new" => "chairs#new"
  post "/chairs" => "chairs#create"
  get "/chairs/:id" => "chairs#show"
  get "/chairs/:id/edit" => "chairs#edit"
  patch "/chairs/:id" => "chairs#update"
  delete "/chairs/:id" => "chairs#destroy"
end
