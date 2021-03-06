Rails.application.routes.draw do

  get 'blogs/index'

  get 'blogs/show'

  get 'blogs/edit'

  get 'blogs/new'

  get 'admin/dashboard'

  get 'admin/helpdesk'

  get 'admin/blog'

  get 'dashboard/helpdesk'

  get 'dashboard/blog'

  resources :helpdesks
  resources :blogs
  
  get 'fronts/index', to: 'fronts#index', as: '/'
  get '/features', to: 'fronts#features', as: '/features'
  get '/getstarted', to: 'fronts#getstarted', as: '/getstarted'
  post 'fronts/getstartedcreate'
  get 'fronts/casestudybosch'
  get 'fronts/casestudythebestof'
  get 'fronts/casestudyservicemaster'

  devise_for :admins
  root 'fronts#index'
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
