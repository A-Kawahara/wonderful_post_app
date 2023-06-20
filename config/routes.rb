
Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles
  # get 'articles/index'
 get 'mypage', action: :show, controller: 'mypage'
 get "search" => "searches#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
