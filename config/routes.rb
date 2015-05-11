Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'posts#index'
  resources :posts
  devise_for :users
end
