Rails.application.routes.draw do
  
  resources :posts do
    resources :post_images
  end
 
end
