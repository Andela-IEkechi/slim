Rails.application.routes.draw do
  root 'home#show'

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  resources :solutions
  resources :comments
  resources :posts
  resources :responses

  scope "/information" do
    resources :news
    get '/api' => 'home#about_api'
  end

  get '/about' => 'about#show'

end

