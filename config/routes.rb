OnlineApplication::Application.routes.draw do
  resources :job_descriptions


  resources :work_experiences


  resources :education_schools


  resources :certifications


  resources :other_graduates


  resources :undergraduate_majors


  resources :club_affiliations


  resources :preference_criteria


  resources :preference_industries


  resources :geographic_experiences


  resources :industry_experiences


  resources :function_experiences


  resources :language_abilities


  resources :preferences


  resources :requirements


  resources :requirement_types


  resources :supplemental_details


  resources :education_details

  resources :employment_details

  resources :dashboard

  resources :personal_details

  resources :online_application_forms

  devise_for :users

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

  resources :admissions
  resources :profile
  resources :online_inquiries
  post '/admissions/submit/(:id)' => 'admissions#update'
  post '/realtime/(:id)' => 'realtime#realtime_submit'
  get '/online_application_status/update_status/(:id)' => 'online_application_forms#update_status'
  get '/excel/export' => 'dashboard#excel'
  get 'submit_requirement' => 'requirements#submit_requirement'
  post 'supplement/(:id)' => 'supplemental_details#update'
  get '/logout/' => 'admissions#logout'

  post'/admissions/language/(:id)' => 'admissions#create_language'
  post'/admissions/function/(:id)' => 'admissions#create_function'
  post'/admissions/industry/(:id)' => 'admissions#create_industry'
  post'/admissions/geographic/(:id)' => 'admissions#create_geographic'
  post'/admissions/preference_industry/(:id)' => 'admissions#create_preference_industry'
  post'/admissions/preference_criteria/(:id)' => 'admissions#create_preference_criteria'
  post'/admissions/club_affiliation/(:id)' => 'admissions#create_affiliation'
  post'/admissions/undergrad_major/(:id)' => 'admissions#create_undergrad'
  post'/admissions/other_degree/(:id)' => 'admissions#create_other_degree'
  post'/admissions/certification/(:id)' => 'admissions#create_certification'
  post'/admissions/school/(:id)' => 'admissions#add_multiple_school'
  post'/admissions/edit_school/(:id)' => 'admissions#edit_school'
  post'/admissions/work/(:id)' => 'admissions#add_multiple_work'
  post'/admissions/edit_work/(:id)' => 'admissions#edit_multiple_work'
post '/admissions/job_description/(:id)/(:id2)' => 'admissions#add_job_description'
  post '/dashboard/submit_new' => 'dashboard#add_new_student'


  get 'api/language_ability/delete/(:id)' => 'admissions#delete_language'
  get '/api/function_experience/delete/(:id)' => 'admissions#delete_function'
  get '/api/industry_experience/delete/(:id)' => 'admissions#delete_industry'
  get '/api/geographic_experience/delete/(:id)' => 'admissions#delete_geographic'
  get '/api/preference_industry/delete/(:id)' => 'admissions#delete_pre_industry'
 get '/api/preference_criteria/delete/(:id)' => 'admissions#delete_pre_criteria'
  get '/api/club_affiliation/delete/(:id)' => 'admissions#delete_club_affiliation'
  get '/api/other_grad/delete/(:id)' => 'admissions#delete_other_grad'
  get '/api/certification/delete/(:id)' => 'admissions#delete_certification'
  get '/api/work/delete/(:id)' => 'admissions#delete_work'
  get '/api/school_educ/delete/(:id)' => 'admissions#delete_school'
  get '/api/job_desc/delete/(:id)' => 'admissions#delete_job_desc'



  get '/api/undergrad/delete/(:id)' => 'admissions#delete_undergrad'
  get '/api/undergrad/delete/(:id)' => 'admissions#delete_undergrad'
  post'/api/changeEmail/(:id)' => 'admissions#changeEmail'
  post'/api/changePassword/(:id)' => 'admissions#changePassword'

  root :to => 'home#index'
end
