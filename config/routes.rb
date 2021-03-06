Rails.application.routes.draw do

  get 'dashboard/show'

  get 'profile/:uid' => 'profile#index'

  post 'profile/add_to_fitfam', to: 'profile#add_to_fitfam', :defaults => { :format => 'json' }

  get "/" => "home#show"

  get "/dashboard" => "dashboard#show"

  post "/dashboard/show" => "dashboard#post_to_wall"

  get "/auth/auth0/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"

  get 'dashboard/burnedCaloriedata/:uid', to: 'dashboard#burnedCaloriedata', :defaults => { :format => 'json' }
  get 'dashboard/consumedCaloriedata/:uid', to: 'dashboard#consumedCaloriedata', :defaults => { :format => 'json' }

  Rails.application.routes.draw do
    root to: 'home#show'
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
