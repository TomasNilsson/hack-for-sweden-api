Rails.application.routes.draw do
  resources :areas do
    collection do
      post 'calculate'
    end
  end

  resources :categories
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
