class ConnectCodesController < ApplicationController
  before_action :set_connect_code, only: [:show, :edit, :update, :destroy]

  # GET /connect_codes
  # GET /connect_codes.json
  def index
    is_admin?
    @connect_codes = ConnectCode.all
  end

  # GET /connect_codes/1
  # GET /connect_codes/1.json
  def show
  is_admin?

  end

  # GET /connect_codes/new
  def new
      is_admin?
    @connect_code = ConnectCode.new
  end

  # GET /connect_codes/1/edit
  def edit
    is_admin?
  end

  # POST /connect_codes
  # POST /connect_codes.json
  def create
    is_admin?
    @connect_code = ConnectCode.new(connect_code_params)

    respond_to do |format|
      if @connect_code.save
        format.html { redirect_to @connect_code, notice: 'Connect code was successfully created.' }
        format.json { render :show, status: :created, location: @connect_code }
      else
        format.html { render :new }
        format.json { render json: @connect_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /connect_codes/1
  # PATCH/PUT /connect_codes/1.json
  def update
    respond_to do |format|
      if @connect_code.update(connect_code_params)
        format.html { redirect_to @connect_code, notice: 'Connect code was successfully updated.' }
        format.json { render :show, status: :ok, location: @connect_code }
      else
        format.html { render :edit }
        format.json { render json: @connect_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connect_codes/1
  # DELETE /connect_codes/1.json
  def destroy
    @connect_code.destroy
    respond_to do |format|
      format.html { redirect_to connect_codes_url, notice: 'Connect code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connect_code
      @connect_code = ConnectCode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def connect_code_params
      params.require(:connect_code).permit(:code, :assigned)
    end

    def is_admin?
        # check if user is a admin
        # if not admin then redirect to where ever you want
        redirect_to root_path unless current_user.admin?
      end

end
