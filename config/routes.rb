BevSelector::Application.routes.draw do

  devise_for :users, path_names: {sign_up: "register", sign_out: "logout"}

  root :to => 'welcome#index'

  resources :beverages

  resources :friends
end
