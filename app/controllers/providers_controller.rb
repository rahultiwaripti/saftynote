class ProvidersController < ApplicationController
  before_filter :authenticate_user!    
  before_action :set_provider, only: [:show, :edit, :update, :destroy]

  # GET /providers
  # GET /providers.json
  def index
    @providers = Provider.all
    @lovedone = Lovedone.find(params[:lovedone_id])  
  end

  # GET /providers/1
  # GET /providers/1.json
  def show
      @lovedone = Lovedone.find(params[:lovedone_id])
  end

  # GET /providers/new
  def new
    @lovedone = Lovedone.find(params[:lovedone_id])  
    @provider = @lovedone.providers.build  # Provider.new
  end

  # GET /providers/1/edit
  def edit
      @lovedone = Lovedone.find(params[:lovedone_id])
      @provider = @lovedone.providers.find(params[:id])  
  end

  # POST /providers
  # POST /providers.json
  def create
    @lovedone = Lovedone.find(params[:lovedone_id])  
    #@provider = Provider.new(provider_params)
    @provider = @lovedone.providers.create(provider_params)
      
    respond_to do |format|
      if @provider.save
        #format.html { redirect_to @provider, notice: 'Provider was successfully created.' }
        format.html { redirect_to edit_lovedone_path(@lovedone), notice: 'Provider was successfully created.' }  
        format.json { render :show, status: :created }
      else
        format.html { render :new }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /providers/1
  # PATCH/PUT /providers/1.json
  def update
    @lovedone = Lovedone.find(params[:lovedone_id]) 
    @provider = @lovedone.providers.find(params[:id]) 
      
    respond_to do |format|
      if @provider.update(provider_params)
        format.html { redirect_to edit_lovedone_path(@lovedone), notice: 'Provider was successfully updated.' }
        format.json { render :show, status: :ok, location: @provider }
      else
        format.html { render :edit }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providers/1
  # DELETE /providers/1.json
  def destroy
    @lovedone = Lovedone.find(params[:lovedone_id]) 
    @provider = @lovedone.providers.find(params[:id]) 
      
    @provider.destroy
    respond_to do |format|
      #format.html { redirect_to providers_url, notice: 'Provider was successfully destroyed.' }
        format.html { redirect_to edit_lovedone_path(@lovedone), notice: 'Provider was successfully deleted.' }
        format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = Provider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provider_params
      params.require(:provider).permit(:company_id, :lovedone_id)
    end
end
