Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home_page"
  resources :folders
  resources :articles, except: [:new]

  get 'articles/new/:folder_id' => "articles#new", as: :new_article
  get 'search' => "articles#search_article", as: :search

  scope '/users' do
    get '/show/:id', to: 'users#show', as: :show_user
    get '/new', to: 'users#new', as: :new_user
    get '/edit/:id', to: 'users#edit', as: :edit_user
    post '/create', to: 'users#create', as: :create_user
    patch '/update/:id', to: 'users#update', as: :update_user
  end

  # logged
  #  login -> getting started

  # not logged
  #  login -> login


  #  root -> getting started
  #  folder -> folder
  #  article -> article
  #  sub_article -> sub_article

  # wrong permition -> getting started

end
