class NotificationsController < ApplicationController
  before_filter :authenticate_user!    
  before_action :set_notification, only: [:show, :edit, :update, :destroy]

  # GET /notifications
  # GET /notifications.json
  def index
    @notifications = Notification.all
  end

  def calc
    @notification = Notification.new
  end

  def calc_post
    if !params[:notification]['created_at(1i)'].nil?
      from = params[:notification]['created_at(1i)']+"-"+params[:notification]['created_at(2i)']+"-"+params[:notification]['created_at(3i)']
      to = params[:notification]['updated_at(1i)']+"-"+params[:notification]['updated_at(2i)']+"-"+params[:notification]['updated_at(3i)']
      redirect_to calc_notification_between_url(from, to) and return
    end
  end

  def calc_between
    if !params[:from].nil?
      from = params[:from]
      to = params[:to]
      @notifications = Notification.where(:created_at => Date::strptime(from, '%Y-%m-%d')..Date::strptime(to, '%Y-%m-%d'))
    else
      @notifications = Notification.all
    end
    @from = from
    @to = to
    @notification = Notification.new
    @fee = Setting.get_value('notification_fee')


    _notifications = {}
    @notifications.each do |notification|
      if _notifications["sponsor_#{notification.sponsor_id}"].nil?
        temp = {ids: "", message_count: 0, sponsor_id: ''}
      else
        temp = _notifications["sponsor_#{notification.sponsor_id}"]
      end
      
      temp[:ids] += ","+ notification.id.to_s
      temp[:message_count] += 1
      temp[:sponsor_id] = notification.sponsor_id
      _notifications["sponsor_#{notification.sponsor_id}"] = temp
    end

    @invoices = _notifications
    @invoice = Invoice.new

    render :calc
  end

  # GET /notifications/1
  # GET /notifications/1.json
  def show
  end

  # GET /notifications/new
  def new
    @notification = Notification.new
  end

  # GET /notifications/1/edit
  def edit
  end

  # POST /notifications
  # POST /notifications.json
  def create
    @notification = Notification.new(notification_params)

    respond_to do |format|
      if @notification.save
        format.html { redirect_to @notification, notice: 'Notification was successfully created.' }
        format.json { render :show, status: :created, location: @notification }
      else
        format.html { render :new }
        format.json { render json: @notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notifications/1
  # PATCH/PUT /notifications/1.json
  def update
    respond_to do |format|
      if @notification.update(notification_params)
        format.html { redirect_to @notification, notice: 'Notification was successfully updated.' }
        format.json { render :show, status: :ok, location: @notification }
      else
        format.html { render :edit }
        format.json { render json: @notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notifications/1
  # DELETE /notifications/1.json
  def destroy
    @notification.destroy
    respond_to do |format|
      format.html { redirect_to notifications_url, notice: 'Notification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notification
      @notification = Notification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notification_params
      #params.require(:notification).permit(:employee_id, :lovedone_id, :status, :notification_type)
      params.require(:notification).permit!
    end
    def notification_params_for_calc
      #params.require(:notification).permit(:employee_id, :lovedone_id, :status, :notification_type)
      params.require(:notification).permit(:created_at, :updated_at)
    end
end
