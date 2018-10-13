Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home_page"
  resources :topics
  resources :subtopics, except: [:new]

  get 'subtopicts/new/:topic_id' => "subtopics#new", as: :new_subtopic
  get 'search' => "subtopics#search_subtopic", as: :search

  scope '/users' do
    get '/new', to: 'users#new', as: :new_user
    get '/edit/:id', to: 'users#edit', as: :edit_user
    post '/create', to: 'users#create', as: :create_user
    patch '/update/:id', to: 'users#update', as: :update_user
  end


end
