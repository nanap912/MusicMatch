Rails.application.routes.draw do
  
  get 'rooms/show'
  devise_for :users
  resources :users, :only => [:index, :show]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show]
  
  get 'home/index' => 'home#index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'posts/musics' => 'posts#musics'
  get 'posts/lyrics' => 'posts#lyrics'
  get 'posts/melodys' => 'posts#melodys'
  get 'posts/songs' => 'posts#songs'
  get 'posts/movies' => 'posts#movies'
  
  get 'posts/index' => 'posts#index'
  get 'posts/new/:category' => 'posts#new'
  post 'posts' => 'posts#create'
  get 'posts/:id' => 'posts#show',as: 'post'
  patch 'posts/:id' => 'posts#update'
  delete 'posts/:id' => 'posts#destroy'
  get 'posts/:id/edit' => 'posts#edit', as:'edit_post'
    
  resources :posts , only: [:index] do
    resources :likes, only: [:show,:create, :destroy]
  end
  
end
