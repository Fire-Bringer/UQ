Rails.application.routes.draw do
  get 'chats/show/:classroom_id', to: 'chats#show', as: 'classroom_chat'
  post 'chats/show/:classroom_id', to: 'chats#create', as: 'classroom_chat_create'

  devise_for :users
  root to: "home#home"

  resources :classrooms, only: [:index, :new, :create, :show] do
    member do
      post 'add_students'
      get 'students'
      get 'chat', to: 'chats#show', as: 'classroom_chat'
    end
    resources :lessons, only: [:index]
  end

  resources :users, only: [:show]
  resources :lessons, only: [:show] do
    resources :questions, only: [:index]
    resources :responses, only: [:index]
  end
end
