# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#root'
  get "/root", to: "pages#root"
  resources :applications
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
