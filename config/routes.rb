Rails.application.routes.draw do
  resources :images, only: [:index, :show, :new, :create, :edit, :update]
  resource :posts, only: [:show, :create, :download]
  resources :post, only: [:show, :new, :edit, :update]
  resources :posts do get 'download', on: :member end
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  get "/connect", to: "static_pages#connect", as: :social_page
  get "/admin", to: "static_pages#admin", as: :admin_page
  get "/portfolio/web", to: "static_pages#web", as: :web_portfolio_page
  get "/portfolio/design", to: "static_pages#design", as: :design_portfolio_page
  get "/portfolio/photography", to: "static_pages#photography", as: :photography_portfolio_page
  get "/resume", to: "static_pages#resume", as: :resume_page
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
