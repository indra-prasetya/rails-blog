Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'posts#index'
  
  get '/life', to: 'posts#index_life'
  get '/code', to: 'posts#index_code'
  get '/contact', to: 'posts#index_contact'
  get '/:slug', to: 'posts#show', as: 'post'
  
  resources :posts  
  devise_for :users
end
