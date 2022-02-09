Rails.application.routes.draw do
  root to: 'activity#mine'
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :standups
  resource :accounts

  scope 'account', as: 'account' do
    resources :users
  end

  get 'user/me', to: 'users#me', as: 'my_settings'
  patch 'user/update_me', to: 'users#update_me', as: 'update_my_settings'
  get 'user/password', to: 'users#password', as: 'my_password'
  patch 'user/update_password', to:'users#update_password', as:'my_update_password'
  get 'support', to: 'static#support'
  get 'activity/mine'
  get 'activity/feed'
  get 'dates/:date', to: 'dates#update', as: 'update_date'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
