Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    member do
      get :following, :followers
    end
  	get :guide
  	get :area
  end
    resources :posts do
    resource :favorites
    resource :post_comments
  end
    resources :prefectures do
    resource :guide_posts
  end
    resources :guide_posts do
    resource :favorites
    resource :post_comments
  end

  resources :relationships, only: [:create, :destroy]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
  

  root 'users#top'

end
