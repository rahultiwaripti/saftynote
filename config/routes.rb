Rails.application.routes.draw do

  get 'messages/index'

  get 'messages/new'

  get 'messages/edit'

  get 'messages/show'

  get 'static_pages/thankyou', to: 'static_pages#thankyou'

  resources :invoices
  resources :settings
  resources :companymembers
  resources :companylovedones
  resources :familymembers
  resources :family_members
  resources :trips
  resources :messages

  #resources :leads

  #resources :providers


  get '/notifications/calculations', to: 'notifications#calc', :as=>"calc_notification"
  post '/notifications/calculations', to: 'notifications#calc_post', :as=>"calc_notification_post"
  get '/notifications/calculations/:from/:to', to: 'notifications#calc_between', :as=>"calc_notification_between"

  resources :notifications

  patch 'upload', to: 'sponsors#upload'
  resources :sponsors

  #resources :followers 
  resources :companies do
    resources :employees        
    resources :companylovedones
  end
    
  #resources :chapters, :only => [:destroy, :update]    
  resources :profiles do
    resources :leads
  end     
  resources :lovedones do
      #get 'followers', on: :member
      #post 'followers', on: :member
      resources 'followers'
      resources :providers
      resources :primary_contacts
      resources :lovedonecompanies
  end    
    
    #get 'lovedones/:id/invite/:user_id' =>'lovedones#invite'#, :as => edit_invite
    #post 'lovedones/:id/invite/:user_id' =>'lovedones#updateinvite'
  root :to => "visitors#index"
  #devise_for :users

  devise_for :users, :controllers => { :registrations => "registrations" }    
  resources :users
    
    post '/api/employee/signin', to: 'mobile_user#login'

    post '/api/employee/:employee/lovedone/:lovedone', to: 'mobile_user#pick_lovedone'
    post '/api/employee/:employee/dellovedone/:lovedone', to: 'mobile_user#drop_lovedone'
    post '/api/employee/getall_lovedones', to: 'mobile_user#getall_lovedones'
    post '/api/employee/:id/lovedones', to: 'mobile_user#getlovedones'
    post '/api/employee/:id/trip/:trip_id/edit', to: 'mobile_user#updatelocation'
    post '/api/employee/:id/location', to: 'mobile_user#updateOnlyLocation'
    
    post '/api/trip/new', to: 'mobile_user#createtrip'
    post '/api/trip/update/:id', to: 'mobile_user#updatetrip'
    post '/api/trip/delete/:id', to: 'mobile_user#deletetrip'
    put  '/api/trip/:id', to: 'mobile_user#updatetrip'
    get '/api/trips/:employee_id', to: 'mobile_user#gettrips'

    get 'admin/dashboard', to: 'users#dashboard' 
    get 'admin/providers', to: 'users#providers'
    get '/admin/users', to: 'users#admins'
    
    get 'admin/primary_contacts', to: 'primary_contacts#index'
    get 'admin/users/:id/edit', to: 'users#edit', :as=>"user_edit"
    put 'admin/users/:id', to: 'users#update_by_admin', :as=>"user_update"
    get 'admin/followers', to: 'followers#index'

    get '/companies/:company_id/track', to: 'employees#track'
    get '/employees/:id/track', to: 'employees#track_employee'
    
    get '/lovedones/:id/newprimary', to: 'lovedones#change_primary'

    get '/companies/:id/lovedones', to: 'companies#lovedones'
    get '/companies/:id/active_lovedones', to: 'companies#active_lovedones'
    
end
