Rails.application.routes.draw do

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  root :to => 'homes#top'
  get "homes/show" => "homes#show"
  resources :users, only: [:show, :edit, :update, :index]

end
