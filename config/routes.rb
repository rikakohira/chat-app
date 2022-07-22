Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  # フロント実装のため仮のルーティング
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]

end
