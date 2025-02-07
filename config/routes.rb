Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/tweets", to: "tweets#index", as: "tweets"    # List all tweets
end
