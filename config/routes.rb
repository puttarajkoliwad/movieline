Rails.application.routes.draw do
  get 'users/add_money'
  resources :theaters
  resources :movies
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'book_ticket', to: 'theaters#book'
  #post 'select_seats', to: theaters#select_seats
  
end
#selva sir 9791184989