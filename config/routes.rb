Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'participants#new'

  resources :participants, only: [:new, :create, :index] do
    collection do
      get :generate_groups
    end
  end
end
