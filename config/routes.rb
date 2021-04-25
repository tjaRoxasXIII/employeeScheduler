Rails.application.routes.draw do
  resources :workdays
  devise_for :users
  resource :calendar, only: [:show], controller: :calendar
  root to: "calendar#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
