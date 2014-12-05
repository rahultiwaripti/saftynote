#require 'action_view'
class MobileUserController < ApplicationController
  include ActionView::Helpers::SanitizeHelper
  #before_filter :authenticate_user!, :allow_ajax_request_from_other_domains
  skip_before_filter :verify_authenticity_token, :only => [:login, :getlovedones, :getall_lovedones, :pick_lovedone, :drop_lovedone, :updatelocation, :createtrip, :updatetrip, :deletetrip, :gettrips, :updateOnlyLocation ]
    
#=begin  
    before_filter :allow_ajax_request_from_other_domains

     def allow_ajax_request_from_other_domains
       headers['Access-Control-Allow-Origin'] = '*'
       headers['Access-Control-Request-Method'] = '*'
       headers['Access-Control-Allow-Headers'] = '*'
     end
#=end

  #for rest based access 
  #POST /api/employee/signin    
  def login
      @employee = Employee.where("username LIKE ? AND password LIKE ?", params[:username], params[:password])
      if @employee
        if @employee.count==0
          render :json=>{result: false}.to_json
        else
          @employee = @employee.first
          @company = Company.find(@employee.company_id)
          # get the last actived loved one with employee id'

          @active_trips = Trip.where(status: ['active','started'])

          active_lovedone_ids = @active_trips.pluck(:lovedone_id)
          @active_lovedones = Lovedone.where(id: active_lovedone_ids)

          render :json=>{ result: true, employee: @employee, company: @company, active_lovedones: @active_lovedones, active_trips: @active_trips }.to_json
        end
      else
        render json: @employee.errors, status: :unprocessable_entity
      end
  end

#/api/employee/lovedones
  def getall_lovedones
    params = location_params
    employee_id = params[:employee_id]
    Trip.where(employee_id: employee_id, status: 'active').update_all({latitude:params[:latitude], longitude:params[:longitude]})

    @employee = Employee.find(employee_id)
    @providers = @employee.company.providers
    @lovedones = Lovedone.where(:id => @providers.collect(&:lovedone_id)).order(:last_name)

    @active_trips = Trip.where(status: ['active','started'])
    @employees = @active_trips.pluck(:employee_id, :lovedone_id)
    @active_trips = @active_trips.pluck(:id, :lovedone_id, :status)

    if @lovedones
      render :json => {lovedones: @lovedones, employees: @employees, active_trips: @active_trips}
    else
      render json: @lovedones.errors, status: :unprocessable_entity 
    end
  
  end   


#/api/employee/:id/lovedones
  def getlovedones
    employee_id = params[:id]
    params = location_params
    Trip.where(employee_id: employee_id, status: ['active', 'started']).update_all({latitude:params[:latitude], longitude:params[:longitude]})

    @employee = Employee.find(employee_id)
    result = @employee.update(:latitude => params[:latitude], :longitude  => params[:longitude])
    @employee.touch
    @providers = @employee.company.providers
    @lovedones = Lovedone.where(:id => @providers.collect(&:lovedone_id)).order(:last_name)

    @active_trips = Trip.where(status: ['active','started'])
    @employees = @active_trips.pluck(:employee_id, :lovedone_id)
    @active_trips = @active_trips.pluck(:id, :lovedone_id, :status)

    
    if @lovedones
        render :json => {lovedones: @lovedones, employees: @employees, active_trips: @active_trips}
    else
        render json: @lovedones.errors, status: :unprocessable_entity 
    end
  
  end   

  
  #/api/employee/:id/lovedone/:id
  def pick_lovedone
    employee = Employee.find(params[:employee])
    lovedone = Lovedone.find(params[:lovedone])

    employee.lovedone_id = lovedone.id

    employee.service_status = "PickUp" if employee.company.provider_type == "Transport"
    employee.service_status = "Arrival" if employee.company.provider_type == "Home_Health"

    if employee.save
      
      render :json => {result: true}
    else
      render :json => {result: false}
    end
  end
      
  #/api/employee/:id/lovedone/:id
  def drop_lovedone
    employee = Employee.find(params[:employee])
    
    employee.service_status = "DropOff" if employee.company.provider_type == "Transport"
    employee.service_status = "Departure" if employee.company.provider_type == "Home_Health"
    employee.save

    

    employee.lovedone_id = ''
    if employee.save
      render :json => {result: true}
    end
  end

  #'/api/employee/:id/lovedone/:lovedone_id'
  #'/api/employee/:id'
  def updatelocation
    @employee = Employee.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    if  @employee.update(:latitude => params[:latitude], :longitude  => params[:longitude]) &&
        @trip.update(:latitude => params[:latitude], :longitude  => params[:longitude])
      render :json => {result: true}
    else
      render json: {result: false}, status: :unprocessable_entity
    end
  end   

  def updateOnlyLocation
    
    Trip.where(employee_id: params[:id], status: ['active','started']).update_all({latitude:params[:latitude], longitude:params[:longitude]})

    @employee = Employee.find(params[:id])
    if  @employee.update(:latitude => params[:latitude], :longitude  => params[:longitude])
      render :json => {result: true}
    else
      render json: {result: false}, status: :unprocessable_entity
    end
  end


  def updateOnlyLocation1
      @employee = Employee.find(params[:id])
        #params.delete :company
        if employee_params.key?"company"
            puts "Employee has compnay key"
            employee_params[:employee].delete :company
        end
        #if employee_params.key?"updated_at"
        #    employee_params[:employee].delete :updated_at
        #end
        if employee_params.key?"updated_at"
            employee_params.delete :updated_at
        end      
      
        
        respond_to do |format|
          #if @employee.update(employee_params.except(:updated_at))
          if @employee.update(employee_params)    
            @employee.touch  
            puts "employee location UPDATED"  
            #format.json { render json: @employee, status: :ok }  
            format.json  { render :json => @employee.to_json(:include => [:company])}  
          else
            format.json { render json: @employee.errors, status: :unprocessable_entity }
          end
        end
    end     
  #create trip
  #/api/trip/:employee_id/:lovedone_id
  #/api/trip/new    
    def createtrip
        #@employee = Employee.find(params[:employee_id])
        #@lovedone = Lovedone.find(params[:lovedone_id])
        Trip.destroy_all(employee_id: trip_params[:employee_id], lovedone_id: trip_params[:lovedone_id], status: 'active')
        @trip = Trip.new(trip_params)
        if @trip.save
            render json: @trip, status: :ok
        else
            render json: @trip.errors, status: :unprocessable_entity
        end
    end
    #update trip 
    #/api/trip/:employee_id/:lovedone_id/:id
    #/api/trip/edit
    #api/trip/:id
    def updatetrip
      if params[:employee_id] == '0'
        employee = Employee.first
      else
        employee = Employee.find(params[:employee_id])
      end
      lovedone = Lovedone.find(params[:lovedone_id])
       #@provider = Provider.find(params[:id])
      #curent_emp_id = params[:employee_id]

     #provider_l = @lovedone.provider.find(params[:id]) 
     # curent_emp_id=current_user.company.provider
      #last_emp_id = params[:employee_id]
      #puts 'params'
      #puts last_emp_id

       #render json: 30, status: :ok
       #return false 

      
      #if last_emp_id.to_i != curent_emp_id.to_i && params[:reqtype]=='dropoff'
      #  render json: '{"emp":"notsame"}', status: :ok
      # return false 
      #end  

      if trip_params[:status] == 'started'
        lovedone.employee_id = employee.id
        lovedone.save
        employee.service_status = "PickUp" if employee.company.provider_type == "Transport"
        employee.service_status = "Arrival" if employee.company.provider_type == "Home_Health"
      elsif trip_params[:status] == 'completed'
        lovedone.employee_id = ''
        lovedone.save
        employee.service_status = "DropOff" if employee.company.provider_type == "Transport"
        employee.service_status = "Departure" if employee.company.provider_type == "Home_Health"
      end
      if employee.save
        send_emailer(employee, lovedone)
      end
      @trip = Trip.find(params[:id]) 
      if @trip.update(trip_params)
        render json: @trip, status: :ok
      else
        render json: @trip.errors, status: :unprocessable_entity
      end
    end

    #delete trip   
    #/api/trip/delete
    
    def deletetrip
      if Trip.destroy(params[:id])
        render json: {result: true}
      else
        render json: {result: false}, status: :unprocessable_entity
      end
    end
  #get trips
  #/api/trips/:employee_id/:lovedone_id
    #/api/trips/:employee_id
    def gettrips
        @employee = Employee.find(params[:employee_id])
        #@lovedone = Lovedone.find(params[:lovedone_id])        
        #filter only trips with state as active or 
        #@trips = Trip.where(employee_id: @employee, lovedone_id: @lovedone)
        @trips = Trip.where(employee_id: @employee, state: "active")
          respond_to do |format|
              if @trips
                  #format.json { render json: @trips}
                  format.json  { render :json => @trips.to_json(:include => [:lovedone, :employee])}
              else
                  #format.html
                  format.json { render json: @trips.errors, status: :unprocessable_entity }
              end              
          end        
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:latitude, :longitude, :employee_id, :company_id, :lovedone_id, :name, :username, :password, :id, :created_at, :updated_at, :service_status)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:employee_id, :lovedone_id, :status, :state, :latitude, :longitude)
    end

    def location_params
      params.require(:location).permit(:employee_id, :latitude, :longitude)
    end
    
    def send_emailer(employee, lovedone)
      @employee = employee
      @lovedone = lovedone
      approved_followers = lovedone.followers
      sponsor = Sponsor.first

      puts 'send_emailer============================================='
      puts approved_followers.inspect
      approved_followers.each do |follower|

        
        track_mail = SystemMailer.track_email(@employee, @lovedone, follower, sponsor)
        mail_message = track_mail.body.to_s

        
          track_mail.deliver
          sponsor_id = 0
          sponsor_id = sponsor.id if !sponsor.nil? && !sponsor.id.nil?
          begin
              notification = Notification.create(employee: @employee, lovedone: lovedone, sponsor_id: sponsor_id,
                follower: follower,primary_contact: nil, status: @employee.service_status , notification_type: "email")
          rescue => ex
            logger.error ex.message
          end    
          sponsor = Sponsor.next(sponsor.id) if !sponsor.nil? && !sponsor.id.nil?
        
        to_number = follower.user.profile.phone_number 

        if(to_number==nil)
         return false
        end

          unless to_number.nil?
            to_number = to_number.gsub(/\D/, "")
            if to_number.size == 10
             
              to_number = '+1' + to_number
              account_sid = ENV['TWILIO_SID']
              auth_token = ENV['TWILIO_TOKEN']
              @client = Twilio::REST::Client.new account_sid, auth_token
              mail_message = mail_message.gsub!(/\n/,' ')
              mail_message = mail_message.gsub('<a href="','')
              mail_message = mail_message.gsub('">link</a>','')
              mail_message = mail_message.gsub('<p>','')
              mail_message = mail_message.gsub('</p>','')
              mail_message = mail_message.gsub('</strong>','')
              mail_message = mail_message.gsub('<strong>','')
              mail_message = mail_message.gsub('<br>','')
              mail_message = mail_message.gsub('&amp;','&')
              mail_message = mail_message.gsub(',',' ')
              10.times{ mail_message = mail_message.gsub('  ',' ') }
              begin
                message_array = mail_message.split(/ http:\/\//)
                message_array.each do |message|
                  message = " http://#{message}" unless message == message_array.first
                  @client.messages.create(
                    :from => ENV['TWILIO_FROM_NUMBER'],
                    :to => to_number,
                    :body => mail_message
                  )
                end
              rescue => ex
                logger.error ex.message
              end
            end
       end
      end 
    end    
end






