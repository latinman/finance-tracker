Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :user_stocks, except: [:edit, :update, :show]
  root "welcome#index"
  get "my_portfolio" => "users#my_portfolio"
  get "search_stocks" => "stocks#search"
end
