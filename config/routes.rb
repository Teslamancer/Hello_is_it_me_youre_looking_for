Rails.application.routes.draw do
  get 'users/new'

  get 'user/new'

  resources :answers
  resources :questions
  root :to => "questions#index"
end

