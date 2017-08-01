Rails.application.routes.draw do
  resources :inputs, param: :_id
  resources :courses
  resources :home

  # customize routes
  # get 'home' => 'home#home'

  # set root
  root :to => 'home#home'
end
