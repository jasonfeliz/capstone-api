# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'

  resources :bookmarks, except: %i[new edit]
  resources :job_posts, except: %i[new edit]
  resources :employers, except: %i[new edit]
  resources :job_seekers, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
