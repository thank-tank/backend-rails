Rails.application.routes.draw do
  get 'sessions/new'
  root                      :to => "app#construction"
  get       '/home',        :to => "app#home"
  get       '/about',       :to => "app#about"
  get       '/contact',     :to => "app#contact"
  get       '/profile',     :to => "users#show"
  get       '/signup',      :to => "users#new"
  get       '/login',       :to => "sessions#new"
  post      '/login',       :to => "sessions#create"
  delete    '/logout',       :to => "sessions#destroy"
  resources                 :users
  resources                 :posts
end
