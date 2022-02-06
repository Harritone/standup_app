Rails.application.routes.draw do
  devise_for :users
  get 'support', to: 'static#support'
  get 'activity/mine'
  get 'activity/feed'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'activity#mine'
end
