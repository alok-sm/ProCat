Test2::Application.routes.draw do
  devise_for :users
  resources :dashboard
  root to: "home#index"
match 'projects/:id' => 'projects#update', :as => :update, :via => :post

match 'projects' => 'projects#index', :as => :index, :via => :get
  resources :uploads
resources :projects
resources :view

resources :projects do

collection { post :search, to: 'projects#index' }

    collection do
	post 'update'
	end
   
collection do
	get 'new'
	end

collection do
	get 'show'
	end

collection do
	post 'edit'
	end

collection do
	get 'list'
	end
    end

  

resources :dept do
    collection do
	get 'test'
	end
    
    collection do
	get 'bt'
	end
	
    collection do
	get 'btopen'
	end
	
    collection do
	get 'btclose'
	end
	
    collection do
	get 'btpast'
	end
	
    collection do
	get 'cv'
	end
	
    collection do
	get 'cvopen'
	end
	
    collection do
	get 'cvclose'
	end
	
    collection do
	get 'cvpast'
	end
	
    collection do
	get 'cs'
	end
	
    collection do
	get 'csopen'
	end
	
    collection do
	get 'csclose'
	end
	
    collection do
	get 'cspast'
	end
	
    collection do
	get 'ee'
	end
	
    collection do
	get 'eeopen'
	end
	
    collection do
	get 'eeclose'
	end
	
    collection do
	get 'eepast'
	end
	
    collection do
	get 'ec'
	end
	
    collection do
	get 'ecopen'
	end
	
    collection do
	get 'ecclose'
	end
	
    collection do
	get 'ecpast'
	end
	
    collection do
	get 'is'
	end
	
    collection do
	get 'isopen'
	end
	
    collection do
	get 'isclose'
	end
	
    collection do
	get 'ispast'
	end
	
    collection do
	get 'me'
	end
	
    collection do
	get 'meopen'
	end
	
    collection do
	get 'meclose'
	end
	
    collection do
	get 'mepast'
	end
	
    collection do
	get 'tc'
	end
	
    collection do
	get 'tcopen'
	end
	
    collection do
	get 'tcclose'
	end
	
    collection do
	get 'tcpast'
	end
	
    collection do
	get 'bca'
	end
	
    collection do
	get 'bcaopen'
	end
	
    collection do
	get 'bcaclose'
	end
	
    collection do
	get 'bcapast'
	end
	
    collection do
	get 'mba'
	end
	
    collection do
	get 'mbaopen'
	end
	
    collection do
	get 'mbaclose'
	end
	
    collection do
	get 'mbapast'
	end
	
    collection do
	get 'mca'
	end
	
    collection do
	get 'mcaopen'
	end
	
    collection do
	get 'mcaclose'
	end
	
    collection do
	get 'mcapast'
	end
	
    collection do
	get 'mcs'
	end
	
    collection do
	get 'mcsopen'
	end
	
    collection do
	get 'mcsclose'
	end
	
    collection do
	get 'mcspast'
	end
	
    collection do
	get 'mec'
	end
	
    collection do
	get 'mecopen'
	end
	
    collection do
	get 'mecclose'
	end
	
    collection do
	get 'mecpast'
	end
	
    collection do
	get 'mme'
	end
	
    collection do
	get 'mmeopen'
	end
	
    collection do
	get 'mmeclose'
	end
	
    collection do
	get 'mmepast'
	end
	
    collection do
	get 'mse'
	end
	
    collection do
	get 'mseopen'
	end
	
    collection do
	get 'mseclose'
	end
	
    collection do
	get 'msepast'
	end
	
    collection do
	get 'mwt'
	end
	
    collection do
	get 'mwtopen'
	end
	
    collection do
	get 'mwtclose'
	end
	
    collection do
	get 'mwtpast'
	end
	end


  

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
