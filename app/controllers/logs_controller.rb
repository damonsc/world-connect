class LogsController < ApplicationController
  before_action :set_log, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /logs
  # GET /logs.json
  def index
  if current_user.admin
  @logs = Log.all
    
	else
	@logs = Log.where(:reference_code => current_user.content_code)
	@clientlogs = Log.where(:client_code => current_user.client_code)
	end
  end

  # GET /logs/1
  # GET /logs/1.json
  def show
  is_admin?
  end

  # GET /logs/new
  def new
  is_admin?
    @log = Log.new
  end

  # GET /logs/1/edit
  def edit
  is_admin?
  end

  # POST /logs
  # POST /logs.json
  def create
    @log = Log.new(log_params)

    respond_to do |format|
      if @log.save
        format.html { redirect_to @log, notice: 'Log was successfully created.' }
        format.json { render :show, status: :created, location: @log }
      else
        format.html { render :new }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /logs/1
  # PATCH/PUT /logs/1.json
  def update
    respond_to do |format|
      if @log.update(log_params)
        format.html { redirect_to @log, notice: 'Log was successfully updated.' }
        format.json { render :show, status: :ok, location: @log }
      else
        format.html { render :edit }
        format.json { render json: @log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /logs/1
  # DELETE /logs/1.json
  def destroy
    @log.destroy
    respond_to do |format|
      format.html { redirect_to logs_url, notice: 'Log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log
      @log = Log.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def log_params
      params.require(:log).permit(:date_of_session, :time_of_sesion, :details, :reference_code, :client_code, :iname)
    end
	
	 def is_admin?
      # check if user is a admin
      # if not admin then redirect to where ever you want 
      redirect_to root_path unless current_user.admin? 
    end
	
end
