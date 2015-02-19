Rails.application.routes.draw do
  root 'authors#index'

  # AUTHORS ROUTES

  resources :authors do
    resources :books, shallow: true
  end

  # get '/authors', to: 'authors#index'

  # get '/authors/new'

  # get '/authors/:id', to: 'authors#show'

  # get '/authors/:id/edit', to: 'authors#edit'

  # post '/authors', to: 'authors#create'

  # put '/authors/:id', to: 'authors#update'

  # delete '/authors/:id', to: 'authors#destroy'


  # # BOOKS ROUTES

  # get '/authors/:author_id/books', to: 'books#index'

  # get '/authors/:author_id/books/new', to: 'books#new'

  # get '/authors/:author_id/books/:id', to: 'books#show'

  # get '/authors/:author_id/books/:id/edit', to: 'books#edit'

  # post '/authors/:author_id/books', to: 'books#create'

  # put '/authors/:author_id/books/:id', to: 'books#update'

  # delete '/authors/:author_id/books/:id', to: 'books#destroy'

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
