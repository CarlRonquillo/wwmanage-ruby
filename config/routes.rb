Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'login#index'

  resources :projects

  #resources :login

  post 'dashboard' => 'pages#dashboard'
  get 'dashboard' => 'pages#dashboard'

end
