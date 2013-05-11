CrunchStats::Application.routes.draw do
  # Routes for the Industry resource:
  # CREATE
  get '/industries/new', controller: 'industries', action: 'new', as: 'new_industry'
  post '/industries', controller: 'industries', action: 'create'

  # READ
  get '/industries', controller: 'industries', action: 'index', as: 'industries'
  get '/industries/:id', controller: 'industries', action: 'show', as: 'industry'

  # UPDATE
  get '/industries/:id/edit', controller: 'industries', action: 'edit', as: 'edit_industry'
  put '/industries/:id', controller: 'industries', action: 'update'

  # DELETE
  delete '/industries/:id', controller: 'industries', action: 'destroy'
  #------------------------------

  # Routes for the Fundinground resource:
  # CREATE
  get '/fundingrounds/new', controller: 'fundingrounds', action: 'new', as: 'new_fundinground'
  post '/fundingrounds', controller: 'fundingrounds', action: 'create'

  # READ
  get '/fundingrounds', controller: 'fundingrounds', action: 'index', as: 'fundingrounds'
  get '/fundingrounds/:id', controller: 'fundingrounds', action: 'show', as: 'fundinground'

  # UPDATE
  get '/fundingrounds/:id/edit', controller: 'fundingrounds', action: 'edit', as: 'edit_fundinground'
  put '/fundingrounds/:id', controller: 'fundingrounds', action: 'update'

  # DELETE
  delete '/fundingrounds/:id', controller: 'fundingrounds', action: 'destroy'
  #------------------------------

  # Routes for the Investment resource:
  # CREATE
  get '/investments/new', controller: 'investments', action: 'new', as: 'new_investment'
  post '/investments', controller: 'investments', action: 'create'

  # READ
  get '/investments', controller: 'investments', action: 'index', as: 'investments'
  get '/investments/:id', controller: 'investments', action: 'show', as: 'investment'

  # UPDATE
  get '/investments/:id/edit', controller: 'investments', action: 'edit', as: 'edit_investment'
  put '/investments/:id', controller: 'investments', action: 'update'

  # DELETE
  delete '/investments/:id', controller: 'investments', action: 'destroy'
  #------------------------------

  # Routes for the Entity resource:
  # CREATE
  get '/entities/new', controller: 'entities', action: 'new', as: 'new_entity'
  post '/entities', controller: 'entities', action: 'create'

  # READ
  get '/entities', controller: 'entities', action: 'index', as: 'entities'
  get '/entities/:id', controller: 'entities', action: 'show', as: 'entity'

  # UPDATE
  get '/entities/:id/edit', controller: 'entities', action: 'edit', as: 'edit_entity'
  put '/entities/:id', controller: 'entities', action: 'update'

  # DELETE
  delete '/entities/:id', controller: 'entities', action: 'destroy'
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
