Rails.application.routes.draw do

  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
  get 'tags/:tag', to: 'posts#index', as: :tag

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts do
    resources :post_images  
  end

  root "posts#index"
end
