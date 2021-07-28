class StreamCodesController < ApplicationController
  before_action :set_stream_code, only: %i[ show edit update destroy ]

  # GET /stream_codes or /stream_codes.json
  
  
  
  def index
    @stream_codes = StreamCode.all
  end

  # GET /stream_codes/1 or /stream_codes/1.json
  def show
  end

  # GET /stream_codes/new
  def new
    @stream_code = StreamCode.new
  end

  # GET /stream_codes/1/edit
  def edit
  end

  # POST /stream_codes or /stream_codes.json
  def create
    @stream_code = StreamCode.new(stream_code_params)

    respond_to do |format|
      if @stream_code.save
        format.html { redirect_to @stream_code, notice: "Stream code was successfully created." }
        format.json { render :show, status: :created, location: @stream_code }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stream_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stream_codes/1 or /stream_codes/1.json
  def update
    respond_to do |format|
      if @stream_code.update(stream_code_params)
        format.html { redirect_to @stream_code, notice: "Stream code was successfully updated." }
        format.json { render :show, status: :ok, location: @stream_code }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stream_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stream_codes/1 or /stream_codes/1.json
  def destroy
    @stream_code.destroy
    respond_to do |format|
      format.html { redirect_to stream_codes_url, notice: "Stream code was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stream_code
      @stream_code = StreamCode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stream_code_params
      params.require(:stream_code).permit(:code, :redirect, :date, :ticket, :is_ticket)
    end
end
