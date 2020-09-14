Rails.application.routes.draw do
  get 'app/home'
  get 'app/profile'
  get 'app/about'
  get 'app/contact'
  root                      :to => "app#home"
  get       '/home',        :to => "app#home"
  get       '/about',       :to => "app#about"
  get       '/contact',     :to => "app#contact"
  get       '/profile',     :to => "app#profile"
  get       '/signup',      :to => "users#new"
  get       '/login',       :to => "sessions#new"
  post      '/login',       :to => "sessions#create"
  delete    '/login',       :to => "sessions#destroy"
  resources                 :users
  resources                 :posts
end
