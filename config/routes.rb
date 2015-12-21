Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "user/registrations" }
  resources :user_stocks, except: [:edit, :update, :show]
  root "welcome#index"
  get "my_portfolio" => "users#my_portfolio"
  get "search_stocks" => "stocks#search"
  get "my_friends" => "users#my_friends"
end
