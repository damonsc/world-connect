class ClientCodesController < ApplicationController
  before_action :set_client_code, only: [:show, :edit, :update, :destroy]

  # GET /client_codes
  # GET /client_codes.json
  def index
    @client_codes = ClientCode.all
  end

  # GET /client_codes/1
  # GET /client_codes/1.json
  def show
  end

  # GET /client_codes/new
  def new
    @client_code = ClientCode.new
  end

  # GET /client_codes/1/edit
  def edit
  end

  # POST /client_codes
  # POST /client_codes.json
  def create
    @client_code = ClientCode.new(client_code_params)

    respond_to do |format|
      if @client_code.save
        format.html { redirect_to @client_code, notice: 'Client code was successfully created.' }
        format.json { render :show, status: :created, location: @client_code }
      else
        format.html { render :new }
        format.json { render json: @client_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_codes/1
  # PATCH/PUT /client_codes/1.json
  def update
    respond_to do |format|
      if @client_code.update(client_code_params)
        format.html { redirect_to @client_code, notice: 'Client code was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_code }
      else
        format.html { render :edit }
        format.json { render json: @client_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_codes/1
  # DELETE /client_codes/1.json
  def destroy
    @client_code.destroy
    respond_to do |format|
      format.html { redirect_to client_codes_url, notice: 'Client code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_code
      @client_code = ClientCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_code_params
      params.require(:client_code).permit(:client, :code)
    end
end
