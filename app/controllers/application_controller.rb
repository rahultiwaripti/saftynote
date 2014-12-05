class ApplicationController < ActionController::Base
  include Pundit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    #devise_parameter_sanitizer.for(:sign_up) << :name
    #devise_parameter_sanitizer.for(:sign_up) << profile_attributes: [:first_name, :last_name] 
    #http://stackoverflow.com/questions/17868746/rails-4-unpermitted-parameters-for-array  
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:id,  :name, :role, :email, :password, :password_confirmation, :terms, :last_name, :first_name, :nick_name, :date_of_birth, :gender, :city, :county, :state,
      profile_attributes: [:id, :user_id, :first_name, :last_name, :middle_initial, :nick_name, :date_of_birth, :gender, :address, :city, :county, :country, :state, :zip, {:contact_method => []}, :phone_number], 
      lovedones_attributes: [[:id, :first_name, :last_name, :middle_initial, :nick_name, :date_of_birth, :gender, :address, :city, :county, :country, :state]],
      company_attributes:[:id, :user_id,:company_name , :business_name , :provider_type , :telephone , :mobile_phone_number , :get_notification  , :user_id , :address , :city , :county , :country , :state , :zip , :contact_last_name , :contact_first_name, :status, {:contact_method => []}],
      )}
    #lovedones_attributes: {:lovedone=>[:id, :first_name, :last_name, :middle_initial, :nick_name, :date_of_birth, :gender, :address, :city, :county, :country, :state]}, 
    #devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:id, :name, :role, :email, :password,:password_confirmation, :current_password, profile_attributes: [:id, :user_id, :first_name, :last_name, :middle_initial, :nick_name, :date_of_birth, :gender, :address, :city, :country, :state, :zip, {:contact_method => []}, :phone_number], company_attributes:[:id, :user_id, :company_name , :business_name , :provider_type , :telephone , :mobile_phone_number , :get_notification  , :user_id , :address , :city , :country , :state , :zip , :contact_last_name , :contact_first_name, :status, {:contact_method => []}]) }
  end


  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "Access denied."
    redirect_to (request.referrer || root_path)
  end

end
