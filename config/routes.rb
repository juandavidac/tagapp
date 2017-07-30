Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  get 'tag/:name' => 'tags#filter', as :tag_filter
  get 'api/cloud' => 'tags#cloud', defaults: {format: 'json'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
