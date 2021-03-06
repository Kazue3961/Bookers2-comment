Rails.application.routes.draw do

  devise_for :users

  root to: 'home#top'

  get 'home/top' => 'home#top'
  get 'home/about'

  resources :users, only: [:show, :index, :edit, :update]
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy] do
  	resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
