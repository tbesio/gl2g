Rails.application.routes.draw do

  devise_for :users
  root 'landing_page#main'

  # Landing page
  get('/landing_page', { :controller => 'landing_page', :action => "main" })

  # Routes for the Pantry_item resource:
  # CREATE
  get('/pantry_items/new', { :controller => 'pantry_items', :action => 'new' })
  get('/create_pantry_item', { :controller => 'pantry_items', :action => 'create' })

  # READ
  get('/pantry_items', { :controller => 'pantry_items', :action => 'index' })
  get('/pantry_items/:id', { :controller => 'pantry_items', :action => 'show' })

  # To show the grocery list
  get('/grocery_list', { :controller => 'pantry_items', :action => 'show_list' })

  # To show your last trip
  get('/last_trip', { :controller => 'pantry_items', :action => 'last_trip' })

  # UPDATE
  get('/pantry_items/:id/edit', { :controller => 'pantry_items', :action => 'edit' })
  get('/update_pantry_item/:id', { :controller => 'pantry_items', :action => 'update' })

  # DELETE
  get('/delete_pantry_item/:id', { :controller => 'pantry_items', :action => 'destroy' })
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get('/categories/new', { :controller => 'categories', :action => 'new' })
  get('/create_category', { :controller => 'categories', :action => 'create' })

  # READ
  get('/categories', { :controller => 'categories', :action => 'index' })
  get('/categories/:id', { :controller => 'categories', :action => 'show' })

  # UPDATE
  # get('/categories/:id/edit', { :controller => 'categories', :action => 'edit' })
  # get('/update_category/:id', { :controller => 'categories', :action => 'update' })

  # DELETE
  # get('/delete_category/:id', { :controller => 'categories', :action => 'destroy' })
  #------------------------------

  # Routes for the Item resource:
  # CREATE
  get('/items/new', { :controller => 'items', :action => 'new' })
  get('/create_item', { :controller => 'items', :action => 'create' })

  # READ
  get('/items', { :controller => 'items', :action => 'index' })
  get('/items/:id', { :controller => 'items', :action => 'show' })

  # UPDATE
  get('/items/:id/edit', { :controller => 'items', :action => 'edit' })
  get('/update_item/:id', { :controller => 'items', :action => 'update' })

  # DELETE
  get('/delete_item/:id', { :controller => 'items', :action => 'destroy' })
  #------------------------------

  # Routes for the User resource:
  # CREATE
  # get('/users/new', { :controller => 'users', :action => 'new' })
  # get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------

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
