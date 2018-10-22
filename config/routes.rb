Rails.application.routes.draw do
  root to: "tribes#index"
  get "signup", to: "signup#new"
end
