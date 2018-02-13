Rails.application.routes.draw do
  
  get 'sessions/new'
  get 'sessions/success'
  post 'sessions' => 'sessions#create'

  resources :users
  root 'welcome#index', as: 'home'
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
