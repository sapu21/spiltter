class BillPaymentsController < ApplicationController
  before_action :set_bill_payment, only: [:show, :edit, :update, :destroy]

  # GET /bill_payments
  # GET /bill_payments.json
  def index
    @bill_payments = BillPayment.all
  end

  # GET /bill_payments/1
  # GET /bill_payments/1.json
  def show
  end

  # GET /bill_payments/new
  def new
    @bill_payment = BillPayment.new
  end

  # GET /bill_payments/1/edit
  def edit
  end

  # POST /bill_payments
  # POST /bill_payments.json
  def create
    @bill_payment = BillPayment.new(bill_payment_params)

    respond_to do |format|
      if @bill_payment.save
        format.html { redirect_to @bill_payment, notice: 'Bill payment was successfully created.' }
        format.json { render :show, status: :created, location: @bill_payment }
      else
        format.html { render :new }
        format.json { render json: @bill_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bill_payments/1
  # PATCH/PUT /bill_payments/1.json
  def update
    respond_to do |format|
      if @bill_payment.update(bill_payment_params)
        format.html { redirect_to @bill_payment, notice: 'Bill payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill_payment }
      else
        format.html { render :edit }
        format.json { render json: @bill_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bill_payments/1
  # DELETE /bill_payments/1.json
  def destroy
    @bill_payment.destroy
    respond_to do |format|
      format.html { redirect_to bill_payments_url, notice: 'Bill payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill_payment
      @bill_payment = BillPayment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bill_payment_params
      params.require(:bill_payment).permit(:bill_amount, :group_id, :bill_purpose, :paid_by )
    end
end
