Rails.application.routes.draw do
  resources :users
  root 'chatroom#index'
  get 'login', to: 'users#new'
  post 'login', to: "users#create"
  delete 'logout', to: 'users#destroy'
  post 'message', to: 'messages#create' 

 

  Rails.application.routes.draw do
    mount ActionCable.server, at: '/cable'
  end

end
