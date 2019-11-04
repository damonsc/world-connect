class UpdatesController < ApplicationController
  before_action :set_update, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :destroy, :edit]

  # GET /updates
  # GET /updates.json
  def index
  #@updates =null
    if user_signed_in?
    @updates = @current_user.updates.where(:user_id => current_user.id)
	end
	  if current_user.admin
    @adminupdates = Update.where(:user_id => current_user.id)  
	end
	
  end

  # GET /updates/1
  # GET /updates/1.json
  def show
  
  end

  # GET /updates/new
  def new
  if user_signed_in?
    @updates = current_user.updates.build
	end
	 
	
  end

  # GET /updates/1/edit
  def edit
  end
  
  def userPost
  @updates = update.where(:user_id => current_user.id)
  end

  # POST /updates
  # POST /updates.json
  def create
 
 
    @updates = current_user.updates.build(update_params)
	@updates.user = current_user
    respond_to do |format|
      if @updates.save
        format.html { redirect_to @updates, notice: 'Update was successfully created.' }
        format.json { render :show, status: :created, location: @updates }
      else
        format.html { render :new }
        format.json { render json: @updates.errors, status: :unprocessable_entity }
      end
    end
	 end 
	
	
  

  # PATCH/PUT /updates/1
  # PATCH/PUT /updates/1.json
  def update
    respond_to do |format|
      if @update.update(update_params)
        format.html { redirect_to @update, notice: 'Update was successfully updated.' }
        format.json { render :show, status: :ok, location: @update }
      else
        format.html { render :edit }
        format.json { render json: @update.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # DELETE /updates/1
  # DELETE /updates/1.json
  def destroy
    @update.destroy
    respond_to do |format|
      format.html { redirect_to updates_url, notice: 'Update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_update
      @update = Update.find(params[:id])
    end
	

    # Never trust parameters from the scary internet, only allow the white list through.
    def update_params
      params.require(:update).permit(:title, :status, :creater, :time, :reference_code, :user_id)
    end
	
	def correct_user
  @update = current_user.updates.find_by(id: params[:id])
  redirect_to updates_path, notice: "Not the correct client to edit this update" if @updates.nil?
  end
  
   def is_admin?
      # check if user is a admin
      # if not admin then redirect to where ever you want 
      redirect_to root_path unless current_user.admin? 
    end
	

  
end
