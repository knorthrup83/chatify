Rails.application.routes.draw do
  devise_for :users
  root "chats#index"
  resources :chats
end
