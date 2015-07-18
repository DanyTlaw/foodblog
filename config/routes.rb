Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :posts do
    resources :post_images  
  end

  scope :api do
    get "/posts(.:format)" => "posts#index"
    get "/posts/:id(.:format)" => "posts#show"
  end
end
