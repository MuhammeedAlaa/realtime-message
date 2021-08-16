Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  post 'message', to: 'messages#create'
  delete 'logout', to: 'sessions#destroy'
end
