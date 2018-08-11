Rails.application.routes.draw do

  resources :pictures
    root to: 'pictures#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :favorites, only: [:create, :destroy]
  
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
