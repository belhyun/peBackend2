class PeExchangesController < ApplicationController
  before_action :set_pe_exchange, only: [:show, :edit, :update, :destroy]

  # GET /pe_exchanges
  # GET /pe_exchanges.json
  def index
    @pe_exchanges = PeExchange.all

    respond_to do |format|
      format.json { render :json => @pe_exchanges }
    end
  end

  # GET /pe_exchanges/1
  # GET /pe_exchanges/1.json
  def show
  end

  # GET /pe_exchanges/new
  def new
    @pe_exchange = PeExchange.new
  end

  # GET /pe_exchanges/1/edit
  def edit
  end

  # POST /pe_exchanges
  # POST /pe_exchanges.json
  def create
    @pe_exchange = PeExchange.new(pe_exchange_params)

    respond_to do |format|
      if @pe_exchange.save
        format.html { redirect_to @pe_exchange, notice: 'Pe exchange was successfully created.' }
        format.json { render :show, status: :created, location: @pe_exchange }
      else
        format.html { render :new }
        format.json { render json: @pe_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pe_exchanges/1
  # PATCH/PUT /pe_exchanges/1.json
  def update
    respond_to do |format|
      if @pe_exchange.update(pe_exchange_params)
        format.html { redirect_to @pe_exchange, notice: 'Pe exchange was successfully updated.' }
        format.json { render :show, status: :ok, location: @pe_exchange }
      else
        format.html { render :edit }
        format.json { render json: @pe_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pe_exchanges/1
  # DELETE /pe_exchanges/1.json
  def destroy
    @pe_exchange.destroy
    respond_to do |format|
      format.html { redirect_to pe_exchanges_url, notice: 'Pe exchange was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pe_exchange
      @pe_exchange = PeExchange.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pe_exchange_params
      params.require(:pe_exchange).permit(:user_id, :prize_date, :product_d, :name, :phone, :address1, :address2, :city, :state, :zip, :id_card, :status)
    end
end
