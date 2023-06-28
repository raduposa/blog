Rails.application.routes.draw do
  resources :articls
  root "articles#index"
  
 get "articles", to: "articles#index"
end
