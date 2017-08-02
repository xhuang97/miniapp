Rails.application.routes.draw do
  resources :inputs, param: :_id
  # do
  #   get 'course', on: :member, shallow: true
  # end
  resources :courses do
    get 'input', on: :member, shallow: true
  end
  resources :home


  # customize routes
  # get 'home' => 'home#home'
  get 'inputs/course/:id' => 'inputs#course'
# get 'photos/:user_id/:photo_id' => 'photos#show', :as => 'user_photo'
  # set root
  root :to => 'home#home'
end
