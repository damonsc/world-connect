class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]
  #  before_action :authenticate_user!, except: [:index, :show]


  # GET /payments
  # GET /payments.json
  def index
   if user_signed_in?
  if current_user.admin == true
  @payments = Payment.all
  end
  if current_user.admin == false
    @payments = Payment.where(:reference_code => current_user.content_code)
	end
	end
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new
  is_admin?
    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
    is_admin?
  end

  # POST /payments
  # POST /payments.json
  def create
    is_admin?
    @payment = Payment.new(payment_params)

    respond_to do |format|
      if @payment.save
        format.html { redirect_to @payment, notice: 'Payment was successfully created.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:reason, :amount, :date, :reference_code)
    end
	 def is_admin?
      # check if user is a admin
      # if not admin then redirect to where ever you want 
      redirect_to root_path unless current_user.admin? 
    end

end
