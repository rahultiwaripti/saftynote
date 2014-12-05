class FollowersController < ApplicationController
  before_filter :authenticate_user!
    before_action :set_follower, only: [:show, :edit, :update, :destroy]

  # GET /followers
  # GET /followers.json
  def index
    @followers = Follower.all
    
    if current_user.admin?
      @lovedones = Lovedone.all
    else
      @lovedone = Lovedone.find(params[:lovedone_id]) unless current_user.admin?
      @lovedones = current_user.lovedones
      @followers = @lovedone.followers
    end
  end

  # GET /followers/1
  # GET /followers/1.json
  def show
      #@lovedone = Lovedone.find(params[:lovedone_id])
  end

  # GET /followers/new
  def new
    #@lovedone = Lovedone.find(params[:lovedone_id])
    if params[:lovedone_id]=='0'
      @lovedone = nil
      @follower = Follower.new
    else
      @lovedone = Lovedone.find(params[:lovedone_id])  
      @follower = @lovedone.followers.build  
    end
    #puts params  
  end

  # GET /followers/1/edit
  def edit
      @lovedone = Lovedone.find(params[:lovedone_id])
      @follower = @lovedone.followers.find(params[:id])
  end

  # POST /followers
  # POST /followers.json
  def create
    #@follower = Follower.new(follower_params)
      @lovedone = Lovedone.find(params[:lovedone_id])
      #@follower = @lovedone.followers.create(params[:follower])
      @follower = @lovedone.followers.create(follower_params)
      
    respond_to do |format|
      if @follower.save
        if current_user.admin?
          render :text=>"<script>top.location.reload();</script>" and return
        else
          format.html { redirect_to edit_lovedone_path(@lovedone), notice: 'Follower was successfully updated.' }
          format.json { render :show, status: :created, location: @follower }
        end
        #format.html { redirect_to @follower, notice: 'Follower was successfully created.' }
        #format.html { redirect_to([@follower.lovedone,@follower]) , notice: 'Follower was successfully created.' }
        #format.html { redirect_to lovedone_followers_url, notice: 'Follower was successfully updated.' }          
         #this works but takes to follwers index page 
        #format.html { redirect_to lovedone_followers_url(@lovedone), notice: 'Follower was successfully updated.' }
        #instead take it to loved ones edit page
        #format.html { redirect_to @lovedone, notice: 'Follower was successfully updated.' }
        #format.html { redirect_to (@lovedone) , notice: 'Follower was successfully created.' }  
      else
        format.html { render :new }
        #format.json { render json: @follower.errors, status: :unprocessable_entity }
        format.json { render json: @lovedone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /followers/1
  # PATCH/PUT /followers/1.json
  def update
      @lovedone = Lovedone.find(params[:lovedone_id])  
      @follower = @lovedone.followers.find(params[:id])       
    respond_to do |format|
      if @follower.update(follower_params)
        #format.html { redirect_to @follower, notice: 'Follower was successfully updated.' }
          #format.html { redirect_to([@follower.lovedone,@follower]), notice: 'Follower was successfully updated.' }
          #format.html { redirect_to lovedone_followers_url, notice: 'Follower was successfully updated.' }
        #format.html { redirect_to lovedone_followers_url(@lovedone), notice: 'Follower was successfully updated.' }
        format.html { redirect_to edit_lovedone_path(@lovedone), notice: 'Follower was successfully updated.' }
          
        format.json { render :show, status: :ok, location: @follower }
      else
        format.html { render :edit }
        format.json { render json: @follower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /followers/1
  # DELETE /followers/1.json
  def destroy
      @lovedone = Lovedone.find(params[:lovedone_id])  
      @follower = @lovedone.followers.find(params[:id])         
      @follower.destroy
      respond_to do |format|
        #format.html { redirect_to followers_url, notice: 'Follower was successfully destroyed.' }
        #format.html { redirect_to lovedone_followers_url, notice: 'Follower was successfully destroyed.' }
        if current_user.admin?
          format.html { redirect_to admin_followers_path, notice: 'Follower was successfully deleted.' }
          format.json { head :no_content }
        else
          format.html { redirect_to edit_lovedone_path(@lovedone), notice: 'Follower was successfully deleted.' }
          format.json { head :no_content }
        end
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follower
      @follower = Follower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def follower_params
      params.require(:follower).permit(:user_id, :lovedone_id, :request_status)
    end
end
