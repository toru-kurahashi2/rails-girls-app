Rails.application.routes.draw do
  root "ideas#index"
  get 'pages/about'
  resources :ideas do
    resources :comments
  end
end
