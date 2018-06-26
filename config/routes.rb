Rails.application.routes.draw do
  namespace :api do
    get 'app/index'
    get 'app/update'
  end
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    resources :store, only: [:index, :update]
  end

  #Do not place any routes below this one
  get '*other', to: 'static#index'
end
