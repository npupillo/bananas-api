Rails.application.routes.draw do
  # resources :users, except: [:new, :edit]
  resources :movies, except: [:new, :edit] do
    resources :reviews, except: [:new, :edit]
  end

  resources :users, defaults: { format: :json }, only: [:show, :index, :create] do
        #dafuq?
    post 'sign_in', on: :collection
    end
  end

