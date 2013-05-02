DestinationApp::Application.routes.draw do
  # Routes for the Airport resource:
  # CREATE
  get '/airports/new', controller: 'airports', action: 'new', as: 'new_airport'
  post '/airports', controller: 'airports', action: 'create'

  # READ
  get '/airports', controller: 'airports', action: 'index', as: 'airports'
  get '/airports/:id', controller: 'airports', action: 'show', as: 'airport'

  # UPDATE
  get '/airports/:id/edit', controller: 'airports', action: 'edit', as: 'edit_airport'
  put '/airports/:id', controller: 'airports', action: 'update'

  # DELETE
  delete '/airports/:id', controller: 'airports', action: 'destroy'
  #------------------------------

  # Routes for the City resource:
  # CREATE
  get '/cities/new', controller: 'cities', action: 'new', as: 'new_city'
  post '/cities', controller: 'cities', action: 'create'

  # READ
  get '/cities', controller: 'cities', action: 'index', as: 'cities'
  get '/cities/:id', controller: 'cities', action: 'show', as: 'city'

  # UPDATE
  get '/cities/:id/edit', controller: 'cities', action: 'edit', as: 'edit_city'
  put '/cities/:id', controller: 'cities', action: 'update'

  # DELETE
  delete '/cities/:id', controller: 'cities', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
