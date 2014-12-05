class CompaniesController < ApplicationController
  before_filter :authenticate_user!    
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    #company_params_copy = company_params      
    #@new_status = company_params[:status] == "true"
    #company_params_copy[:status] = @new_status
      
    @company = Company.new(company_params)
    #@company = Company.new(company_params_copy)  

    respond_to do |format|
      if @company.save
        unless current_user.admin?
          format.html { redirect_to @company, notice: 'Company was successfully created.' }
          format.json { render :show, status: :created, location: @company }
        else
          format.html { redirect_to admin_providers_path, notice: 'Company was successfully created.' }
          format.json { render :show, status: :created, location: @company }
        end
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      #company_params_copy = company_params      
      #@new_status = company_params[:status] == "1" ? 1 : 0
      #@new_status = company_params[:status] == "true"    
      #company_params_copy[:status] = @new_status
        
      #if @company.update(company_params_copy)
      if @company.update(company_params)    
        #format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        if company_params[:status]=="approved"
          unless @company.user==nil
            SystemMailer.approveapp_email(@company.user.email).deliver
            @company.user.confirm!
          end
        end
        flash.now[:notice] = 'Company was successfully updated.'
        format.html { render :edit }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def lovedones
    @company = Company.find(params[:id])
    ids = @company.providers.pluck('lovedone_id')
    @lovedones = Lovedone.where(id: ids)
    render json: {lovedones: @lovedones.all}
  end

  def active_lovedones
    @company = Company.find(params[:id])
    ids = @company.providers.pluck('lovedone_id')
    @lovedones = Lovedone.where(id: ids)
    @active_trips = Trip.where(status: ['active', 'started']).all.pluck('id, lovedone_id, status, employee_id')

    @active_lovedones = []
    @lovedones.each do |lovedone|
      trips = @active_trips.select{|trip| trip[1] == lovedone.id}
      if trips.size()>0
        trip = trips.first
        @active_lovedones << {lovedone: lovedone, status: trip[2], trip_id: trip[0], employee_id: trip[3]}
      end
    end
    render json: {active_lovedones: @active_lovedones}
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:company_name, :business_name, :provider_type, :telephone, :mobile_phone_number, :get_notification, :user_id, :address, :city, :county, :state, :zip, :contact_last_name, :contact_first_name, {:contact_method=>[]}, :status, :email)
    end
end
