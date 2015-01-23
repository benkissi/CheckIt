Rails.application.routes.draw do

 

  # devise_for :manufacturer
  devise_for :admins

  resources :products 
  resources :codes
  resources :reports

  get 'analytics/show'
  get 'welcome/index'
  get 'welcome/input'
  get 'welcome/check'

  # resources :manufacturers
  #resources :admins 

  
  get 'codes/generate/:id' => 'codes#generate', :as => "codes_generate"
  get 'welcome/verified' => 'welcome#verified'
  get 'welcome/not_verified/:id' => 'welcome#not_verified', :as => "welcome_not_verified"
  get 'codes/index'
  get 'reports/create' => 'reports#create'
  get 'welcome/about' => 'welcome#about', :as => "welcome_about"
  devise_for :manufacturers do
  get '/manufacturers /sign_out' => 'devise/sessions#destroy'
end
  

  

  

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
