Rails.application.routes.draw do
  get 'search/search'
  resources :microposts
  resources :users
  root "ideas#index"
  get 'pages/about'
  resources :ideas do
    resources :comments
  end
end
