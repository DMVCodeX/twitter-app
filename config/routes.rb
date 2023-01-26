Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"

  get "/tweets" => "tweets#index"
  get "/tweets/:id" => "tweets#show"
  post "/tweets" => "tweets#create"
  delete "/tweets/:id" => "tweets#destroy"
end
