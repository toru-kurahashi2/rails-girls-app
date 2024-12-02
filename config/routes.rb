Rails.application.routes.draw do
  get 'pages/about'
  resources :ideas
  root "pages#homepage"
end
