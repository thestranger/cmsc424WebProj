Cmsc424WebProj::Application.routes.draw do
  resources :teaches

  resources :contains

  resources :submitted_answers

  resources :submissions

  root to: 'static_pages#home'

  match '/questionquery/:id', to: 'questions#ajax_get'
  match '/instructorsignup', to: 'instructors#new'
  match '/instructorsignin', to: 'instructors#new'
  match '/instructorsignout', to: 'sessions#destroy', via: :delete
  match '/instructors/:id/courses', to: 'teaches#show_instructor'
  match '/instructors/:id/courses/:course_id', to: 'courses#delete_teaches', via: :delete
  match '/instructors/:id/courses/:course_id', to: 'courses#show_from_course_id'
  match '/instructors/:id/courses/:course_id/newassignment', to: 'assignments#new'
  match '/instructors/:id/courses/:course_id/newinstructor', to: 'teaches#new'
  match '/instructors/:id/courses/:course_id/:assignment_id', to: 'assignments#show_assignment_questions'
  match '/instructors/:id/courses/:course_id/:assignment_id/addquestion', to: 'questions#new_question_and_contain'

  match '/studentsignup', to: 'students#new'
  match '/studentsignin', to: 'sessions#new'
  match '/studentsignout', to: 'sessions#destroy', via: :delete
  match 'students/:id/courses', to: 'enrolleds#show_student'
  match '/students/:id/assignments', to: 'assignments#index'

  
  resources :sessions, only: [:new, :create, :destroy]

  resources :questions

  resources :courseids

  resources :courses

  resources :students

  resources :assignments

  resources :assigneds

  resources :answereds

  resources :enrolleds

  resources :ta

  resources :professors

  resources :hints

  resources :options

  resources :instructors

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
