class EmployeesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @company = Company.find(params[:company_id]) 
    #@employees = Employee.all
    @employees = @company.employees

=begin      
    @hash = Gmaps4rails.build_markers(@employees) do |employee, marker|
        marker.lat employee.latitude
        marker.lng employee.longitude
        #if employee.lovedone
        #    marker.infowindow "Provider: " + employee.name + "<br/>Loved One: " + employee.lovedone.first_name +" " + employee.lovedone.last_name
        #else
            marker.infowindow "Provider: " + employee.name
        #end    
    end 
=end
    
  end
    
  def track
    @company = Company.find(params[:company_id]) 
    #@provider = @company.Provider.find(params[:provider_id])
    comuserid = @company.user_id

    @profiles = Profile.all

    @tuserp = ''

    @current_userid = "current_user.id"

    @default_zipcode = @company.zip


    @employees = @company.employees.onlined_employees
    empcount = 1
    @hash = Gmaps4rails.build_markers(@employees) do |employee, marker|
      lovedone_name_str = ""
      lovedone_name_str = "<p class='map-info'><strong>Loved one:</strong> #{employee.lovedones.pluck(:last_name, :first_name).join(", ")}</p>" unless employee.lovedones.count==0

      if employee.latitude && employee.longitude
          marker.lat employee.latitude
          marker.lng employee.longitude
          marker.infowindow "<p class='map-info'><strong>Employee:</strong> <empname>" + employee.name + "</empname></p>" + lovedone_name_str
          marker.json  empname: employee.name, empnum: empcount
          empcount += 1
      end
    end
    @hash = @hash.select { |h| h[:lat] }
    respond_to do |format|
      if @hash
        format.html 
        format.json { render json: @hash }
      else
        format.html
        format.json { render json: @hash.errors, status: :unprocessable_entity }
      end
    end      
  end 

  def track_employee
    @employee = Employee.find(params[:id])

    @current_userid = "current_user.idnotrack"
    unless @employee.lovedones.include?(current_user.lovedones.first)
      @hash = []
    else
      @employees = [@employee] 
      @hash = Gmaps4rails.build_markers(@employees) do |employee, marker|
        lovedone_name_str = ""
        lovedone_name_str = "<p class='map-info'><strong>Loved one:</strong> #{employee.lovedones.pluck(:last_name, :first_name).join(", ")}</p>" unless employee.lovedones.count==0
       
 

        if employee.latitude && employee.longitude
            marker.lat employee.latitude
            marker.lng employee.longitude
            marker.infowindow "<p class='map-info'><strong>Employee:</strong> " + employee.name + "</p>" + lovedone_name_str
        end
      end
      @hash = @hash.select { |h| h[:lat] }   
    end
    respond_to do |format|
      if @hash
        format.html 
        format.json { render json: @hash }
      else
        format.html
        format.json { render json: @hash.errors, status: :unprocessable_entity }
      end
    end      
  end 

  # GET /employees/1
  # GET /employees/1.json
  def show
      @company = Company.find(params[:company_id])
  end

  # GET /employees/new
  def new
    @company = Company.find(params[:company_id])  
    #@employee = Employee.new
    @employee = @company.employees.build  
  end

  # GET /employees/1/edit
  def edit
      @company = Company.find(params[:company_id])  
      @employee = @company.employees.find(params[:id])      
  end

  # POST /employees
  # POST /employees.json
  def create
    @company = Company.find(params[:company_id])  
    #@employee = Employee.new(employee_params)
    @employee = @company.employees.create(employee_params)
      
    respond_to do |format|
      if @employee.save
        format.html { redirect_to company_employees_url(@company), notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    @company = Company.find(params[:company_id])
    @employee = @company.employees.find(params[:id])  
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to company_employees_url(@company), notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @company = Company.find(params[:company_id]) 
    @employee = @company.employees.find(params[:id])
      
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to company_employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:latitude, :longitude, :company_id, :lovedone_id, :name, :username, :password, :id, :created_at, :updated_at, :service_status)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:employee_id, :lovedone_id, :status, :state, :latitude, :longitude)
    end
end
