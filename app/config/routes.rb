Rails.application.routes.draw do
  resources :comments
  # get 'comments/new'
  post 'comments/new' => "comments#show"

  get 'main/map', to: 'main#map'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to:'main#index'

end
