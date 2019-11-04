Rails.application.routes.draw do
  # resources :posts
  resources :posts do
    resources :comments
  end
  get 'homes/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'homes#index'
  get 'hearts/toggle_heart/:id' => 'hearts#toggle_heart', as: :hearts
end
