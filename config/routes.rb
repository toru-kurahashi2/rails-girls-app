Rails.application.routes.draw do
  root "pages#homepage"
  get 'pages/about'
  resources :ideas do
    resources :comments
  end
end
