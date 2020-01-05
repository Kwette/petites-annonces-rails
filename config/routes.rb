Rails.application.routes.draw do

  get 'pages/home'
  root to: 'pages#home'
  devise_for :users, :path => '', path_names:
                          { sign_in: "login", sign_up: "new"}

  resources :advertisements, only: [:index, :show, :new, :create, :edit, :update, :destroy, :publish] do
    resources :comments, only: [:index, :show, :new, :create]

    get 'advertisements/:id', to: 'advertisements#publish'
    patch 'advertisements/:id', to: 'advertisements#publish', as: 'publish_advertisement'
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
