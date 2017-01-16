Rails.application.routes.draw do
  devise_for :users
  resources :posts do
  	resources :comments
  end

  get 'posts/prioritize/:id', to: 'posts#prioritize' , as: :prioritize_post

  root 'posts#index'
end
