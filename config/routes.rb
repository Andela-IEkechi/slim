Rails.application.routes.draw do
  root 'home#show'

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks', sessions: :sessions }
  resources :solutions
  resources :comments
  resources :posts
  resources :responses

  scope "/information" do
    resources :news
    get '/api' => 'home#about_api'
  end

  get '/about' => 'about#show'

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :headlines, only: [:index, :show]
      resources :sources, only: [:index, :show]
    end
  end

  mount Ckeditor::Engine => '/ckeditor'
end

