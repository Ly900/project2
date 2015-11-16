Rails.application.routes.draw do
  get 'students/index'

  resources :student
end
