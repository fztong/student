Rails.application.routes.draw do
  resources :clients
  resources :lists
  devise_for :users
  root to:"home#index"
  # root to:"classname#index"
  resources :applicants  
  resources :courses 
  resources :croues_times 
  resources :weeks   
  resources :classnames do
    collection do
	    get :update_cname
      get :update_clazz
      get :update_tname
      get :update_tclazz
      get :update_tcname
      get :update_tcourse
      get :update_sname
      get :update_student
      get :update_teacher
      get :update_teas 
      get :update_ct
      get :update_ctime
      get :update_stud
      get :update_stus
      get :update_course
      get :update_cs     
      get :destroy_tname  
	  end
  end
  resources :stus do
    collection do
      post :create_student
    end
  end
  resources :teachers 
  resources :users 
  resources :regist_users
  resources :select_courses do
    collection do
      get :query_teacher
    end
  end

end
