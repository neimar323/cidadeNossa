Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    member do
      get 'prioritize'
    end
  	resources :comments
  end

  root 'posts#index'
end
