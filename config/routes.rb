Rails.application.routes.draw do
  devise_for :users, :path => 'u'
  Rails.application.routes.default_url_options[:host] = "XXX"

  root "posts#index", as:'home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about' => "pages#about", as:'about'
  get 'profile' => "pages#profile", as:'profile'


  resources :stars
                                                              

  resources :posts do   
    member do
      get 'star', to: "posts#star"
      get 'unstar', to:"posts#unstar"
    end
    
    resources :comments

  end
  resources :users do
    member do 
      get 'starred_list', to: "users#starred_list"
    end
  end
end
