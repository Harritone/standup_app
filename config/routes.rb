Rails.application.routes.draw do
  root to: 'activity#mine'
  devise_for :users, controllers: { registrations: 'registrations' }

  get 's/new/(:date)', to: 'standups#new', as: 'new_standup'
  get 's/edit/(:date)', to: 'standups#edit', as: 'edit_standup'
  resources :standups, path: 's', except: %i[new edit]

  resource :accounts

  get 't/new', to: 'teams#standups'
  get 't/:id/edit', to: 'teams#edit'
  get 't/:id/s', to: 'teams#standups', as: 'team_standups'
  get 't/:id/s/(:date)', to: 'teams#standups', as: 'team_standups_by_date'
  get 't/:id/(:date)', to: 'teams#show'
  resources :teams, path: 't'

  scope 'account', as: 'account' do
    resources :users do
      member do
        get 's', to: 'users/standups#index', as: 'standups'
      end
    end
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
