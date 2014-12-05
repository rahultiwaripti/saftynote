class CompanymembersController < ApplicationController
  before_action :set_company_member, only: [:show, :edit, :update, :destroy]

  # GET /company_members
  # GET /company_members.json
  def index
    @companies = Company.all
  end

  # GET /company_members/1
  # GET /company_members/1.json
  def show
  end

  # GET /company_members/new
  def new
    @company_member = User.new
  end

  # GET /company_members/1/edit
  def edit
    @company_member = User.find(params[:id])

  end

  # POST /company_members
  # POST /company_members.json
  def create
    @company_member = User.new(company_member_params)
    @company_member.role = "serviceprovider"
    respond_to do |format|
      if @company_member.save
        unless @company_member.company.nil?
          @company_member.company.status = "pending"
          @company_member.company.save
        end
        format.html { redirect_to companymembers_path, notice: 'Successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @company_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_members/1
  # PATCH/PUT /company_members/1.json
  def update
    @company_member = User.find(params[:id])
    params = company_member_params
    company = Company.find(@company_member.company.id)
    original_status = company.status
    company_params = params[:company_attributes]
    respond_to do |format|
      if company.update(company_params)
        if original_status != company.status && company.status == "approved"
          @company_member.send_on_create_confirmation_instructions_ex
          #SystemMailer.receiveapp_email(@company_member.email).deliver
        end
        if current_user.admin?
          format.html { redirect_to companymembers_path, notice: 'Successfully updated.' }
          format.json { render :show, status: :ok, location: @company_member }
        else
          format.html { redirect_to edit_companymember_path(@company_member), notice: 'Successfully updated.' }
          format.json { render :show, status: :ok, location: @company_member }
        end
      end
    end

  end

  # DELETE /company_members/1
  # DELETE /company_members/1.json
  def destroy
    @company_member = User.find(params[:id])
    @company_member.destroy
    respond_to do |format|
      format.html { redirect_to companymembers_path, notice: 'Successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_company_member
    	@company_member = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_member_params
      params.require(:user).permit(:lastname, :firstname, :email, :mobilephone, :contact, :city, :county, :state, :username, :password,:password_confirmation,
        company_attributes: [:company_name, :business_name, :provider_type, :telephone, :mobile_phone_number, :get_notification, :user_id, :address, :city, 
          :county, :state, :zip, :picture, :featured, :contact_last_name, :contact_first_name, {:contact_method=>[]}, :status, :email])
    end


    def sign_up_params
      devise_parameter_sanitizer.sanitize(:sign_up)
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :terms, 
        profile_attributes: [:first_name, :last_name, :phone_number, {:contact_method => []}, :city, :county, :state],
        )
    end

end
