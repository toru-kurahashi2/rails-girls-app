Rails.application.routes.draw do
  resources :microposts
  resources :users
  root "ideas#index"
  get 'pages/about'
  resources :ideas do
    resources :comments
  end
end
