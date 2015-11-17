Rails.application.routes.draw do
  devise_for :users
  root to: "students#index"

  resources :students do
    resources :logs
  end
end
