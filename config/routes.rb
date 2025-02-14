Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/tweets", to: "tweets#index", as: "tweets"    # List all tweets
  # get "tweets/new", to: "tweets#new", as: "new_tweet"   # Form for new tweet
  # get "/tweets/:id", to: "tweets#show", as: "tweet"      # Display a single tweet

  resources :tweets

  root "tweets#index"
end
