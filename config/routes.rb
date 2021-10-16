Rails.application.routes.draw do
  resources :customergroups do
    resources :winepurchases do
      resources :brandofwines do
        resources :imageelement
      end
    end
    resources :artsessions do
      resources :artpieces do
        resources :imageelement
      end
    end
  end
  resources :brandofwines do
    resources :imageelement
  end
  resources :artsessions do
    resources :artpiece do
      resources :imageelement
    end
  end
resources :customergroups, only: [:index, :show, :create, :update, :destroy]
resources :brandofwines, only: [:index, :show, :create, :update, :destroy]
resources :artsessions, only: [:index, :show, :create, :update]
resources :artpieces, only: [:index, :show, :create, :update, :destroy]
resources :winepurchases, only: [:index, :show, :create, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
