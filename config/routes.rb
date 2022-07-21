Rails.application.routes.draw do
  get 'messages/index'
  # フロント実装のため仮のルーティング
  root to: "messages#index"
end
