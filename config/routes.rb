Rails.application.routes.draw do
  devise_for :users, :path => 'u'
  Rails.application.routes.default_url_options[:host] = "XXX"

  root "posts#index", as:'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about' => "pages#about", as:'about'
  get 'profile' => "pages#profile", as:'profile'
  resources :posts do
    resources :comments

  end
  resources :users
end
