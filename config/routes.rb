Saladfu2::Application.routes.draw do

  get "dressing/dressing"
  get "toppings/topping"
  root 'salads#index'
  get 'search', to: 'salads#search'
  resources :salads, only: [:new, :create, :show]



end
