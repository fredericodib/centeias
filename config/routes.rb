Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home_page"
  resources :topics
  resources :subtopics, except: [:new]
  get 'subtopicts/new/:topic_id' => "subtopics#new", as: :new_subtopic
  get 'search' => "subtopics#search_subtopic", as: :search

end
