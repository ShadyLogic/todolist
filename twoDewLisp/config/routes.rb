Rails.application.routes.draw do
  resources :lists do
    resources :tasks, except: :show do
      post '/complete', to: 'tasks#complete'
    end
  end
  root 'lists#new'
end
