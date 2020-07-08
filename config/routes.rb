Rails.application.routes.draw do
  get 'welcome/index'
  get 'about' => 'pages#about', as: 'about'
  resources :articles
  resources :form

  root 'welcome#index', as: 'home'
  # root 'application#hello'

end
