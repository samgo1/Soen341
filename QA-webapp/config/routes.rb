Rails.application.routes.draw do
  
  root 'questions#index'
  get 'signin' => 'pages#signin', as: 'signin'
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
