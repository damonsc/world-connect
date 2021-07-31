class TicketHandlersController < ApplicationController
  before_action :set_ticket_handler, only: %i[ show edit update destroy ]

  # GET /ticket_handlers or /ticket_handlers.json
  def index
      is_admin?
    @ticket_handlers = TicketHandler.all
  end

  # GET /ticket_handlers/1 or /ticket_handlers/1.json
  def show
      $duplicate_amount = 0
      $ticket_counter = 0
      is_admin?
      @ticket_handlers = TicketHandler.all
  end

  # GET /ticket_handlers/new
  def new
      is_admin?
    @ticket_handler = TicketHandler.new
  end

  # GET /ticket_handlers/1/edit
  def edit
      is_admin?
  end

  # POST /ticket_handlers or /ticket_handlers.json
  def create
    @ticket_handler = TicketHandler.new(ticket_handler_params)

    respond_to do |format|
      if @ticket_handler.save
        format.html { redirect_to @ticket_handler, notice: "Ticket handler was successfully created." }
        format.json { render :show, status: :created, location: @ticket_handler }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ticket_handler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_handlers/1 or /ticket_handlers/1.json
  def update
    respond_to do |format|
      if @ticket_handler.update(ticket_handler_params)
        format.html { redirect_to @ticket_handler, notice: "Ticket handler was successfully updated." }
        format.json { render :show, status: :ok, location: @ticket_handler }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ticket_handler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_handlers/1 or /ticket_handlers/1.json
  def destroy
    @ticket_handler.destroy
    respond_to do |format|
      format.html { redirect_to ticket_handlers_url, notice: "Ticket handler was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_handler
      @ticket_handler = TicketHandler.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_handler_params
      params.require(:ticket_handler).permit(:event, :code, :date, :amount, :is_ticket, :ticket, :run_check, :batch_amount, :backup_char)
    end
    
    def is_admin?
     # check if user is a admin
     # if not admin then redirect to where ever you want
     redirect_to root_path unless current_user.admin?
   end
    
    
end
