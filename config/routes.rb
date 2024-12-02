Rails.application.routes.draw do
  get 'pages/about'
  resources :ideas
  root to: redirect("/ideas")
end
