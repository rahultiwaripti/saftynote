class LovedonesController < ApplicationController
  before_filter :authenticate_user!    
  before_action :set_lovedone, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
    
  # GET /lovedones
  # GET /lovedones.json
  def index
    @lovedones_all = Lovedone.all
    if current_user.admin?
        @primarycontacts = PrimaryContact.all
        @following_followers = Follower.where("request_status LIKE 'approved'" )  
        @invited_followers = Follower.where("request_status LIKE 'invited'" )  
    else    
        #get loved ones only for primary contacts and to which the user is a follower
        #@lovedones = Lovedone.where("primary_contact_id = ?" ,current_user.id)   
        #@primarycontacts = PrimaryContact.where("user_id = ?", current_user.id)    
        @lovedones = current_user.lovedones
        #@primarycontacts = PrimaryContact.where("user_id = ?", @current_user)        
        #@lovedones = @primarycontacts.lovedones    
        #only show loved ones that you follow or that are your primary contact
        #@lovedones = policy_scope(Lovedone)

        @following_followers = Follower.where("user_id = ? AND request_status LIKE 'approved'" , current_user.id)  
        #status approved
        #@following_lovedones  = @following_followers.lovedones

        @invited_followers = Follower.where("user_id = ? AND request_status LIKE 'invited'" , current_user.id)  
        #status invited
        #@invited_lovedones  = @following_followers.lovedones
    end
  end

  def refresh
      @primarycontacts = PrimaryContact.where("user_id = ?", current_user.id)    
      @following_followers = Follower.where("user_id = ? AND request_status = 'approved'" , current_user.id)  
      @invited_followers = Follower.where("user_id = ? AND request_status = 'invited'" , current_user.id)  
  end      
  # GET /lovedones/1
  # GET /lovedones/1.json
  def show
          #@users = User.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])  
      #added for .js otherwise json and html were anyway supported
      #http://davidsulc.com/blog/2011/04/10/implementing-a-public-api-in-rails-3/
      @lovedone = Lovedone.find(params[:id])
      respond_to do |format|
        format.html # show.html.erb
        #prevented by forgery protection
        format.js  { render :json => @lovedone, :callback => params[:callback] }
        format.json  { render :json => @lovedone }
        format.xml  { render :xml => @lovedone }
      end
      
  end

  # GET /lovedones/new
  def new
    @lovedone = Lovedone.new
    @current_user = User.find(session["warden.user.user.key"][0][0])
    @lovedone.build_primary_contact(user_id: @current_user)
    @lovedone.primary_contact.user_id = @current_user.id  
    #@lovedone.primary_contact.build_primary_contact
    #@lovedone.primary_contact.user_id = @current_user  
      #@users = User.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])  
      
  end

  # GET /lovedones/1/edit
  def edit
    @users = User.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])  
    @featured_companies = Company.featured
    @transports = Company.transports
    @home_healths = Company.home_healths
  end

  # GET /lovedones/1/invite/:user_id
  def invite
      puts params[:user_ids]
  end
    #POST lovedone/:id/invite/:user_id
    def updateinvite
    end 
    
  # POST /lovedones
  # POST /lovedones.json
  def create
    @lovedone = Lovedone.new(lovedone_params)
    @current_user = User.find(session["warden.user.user.key"][0][0])
    @primary_contact = @lovedone.create_primary_contact(user_id: @current_user)
    #@primary_contact.user_id = @current_user  
    @lovedone.primary_contact.user_id = @current_user.id  
    #@lovedone.primary_contact_id = @current_user.id  
    respond_to do |format|
      if @lovedone.save
        format.html { redirect_to @lovedone, notice: 'Lovedone was successfully created.' }
        format.json { render :show, status: :created, location: @lovedone }
        #http://stackoverflow.com/questions/10338692/how-can-i-find-a-devise-user-by-its-session-id  
        #@current_user = User.find(session["warden.user.user.key"][0][0])
        #@lovedone.make_primary!(@current_user)  
      else
        format.html { render :new }
        format.json { render json: @lovedone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lovedones/1
  # PATCH/PUT /lovedones/1.json
  def update
    respond_to do |format|
      params = lovedone_params
      r = params[:date_of_birth].split('/')
      params[:date_of_birth] = "#{r[1]}/#{r[0]}/#{r[2]}"
      if @lovedone.update(params)
        #format.html { redirect_to @lovedone, notice: 'Lovedone was successfully updated.' }
        flash.now[:notice] = 'Lovedone was successfully updated.'
        format.html { render :edit}
        format.json { render :show, status: :ok, location: @lovedone }
      else
        format.html { render :edit }
        format.json { render json: @lovedone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lovedones/1
  # DELETE /lovedones/1.json
  def destroy
    @lovedone.destroy
    respond_to do |format|
      #refresh    
      format.html { redirect_to lovedones_url, notice: 'Lovedone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_provders
    
  end


  # /lovedones/:id/newprimary    
  def change_primary
      
  end 
    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lovedone
      @lovedone = Lovedone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lovedone_params
      params.require(:lovedone).permit(:last_name, :first_name, :middle_initial, :nick_name, :date_of_birth, :gender, :city, :county, :state)
    end
    

  
  def sort_column
    User.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end    
end
