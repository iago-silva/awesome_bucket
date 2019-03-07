Rails.application.routes.draw do
  resources :buckets
  root to: "buckets#index"
end
