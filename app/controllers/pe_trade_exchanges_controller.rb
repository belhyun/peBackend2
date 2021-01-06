class PeTradeExchangesController < ApplicationController
  before_action :set_pe_trade_exchange, only: [:show, :edit, :update, :destroy]

  # GET /pe_trade_exchanges
  # GET /pe_trade_exchanges.json
  def index
    @pe_trade_exchanges = PeTradeExchange.all
  end

  # GET /pe_trade_exchanges/1
  # GET /pe_trade_exchanges/1.json
  def show
  end

  # GET /pe_trade_exchanges/new
  def new
    @pe_trade_exchange = PeTradeExchange.new
  end

  # GET /pe_trade_exchanges/1/edit
  def edit
  end

  # POST /pe_trade_exchanges
  # POST /pe_trade_exchanges.json
  def create
    @pe_trade_exchange = PeTradeExchange.new(pe_trade_exchange_params)

    respond_to do |format|
      if @pe_trade_exchange.save
        format.html { redirect_to @pe_trade_exchange, notice: 'Pe trade exchange was successfully created.' }
        format.json { render :show, status: :created, location: @pe_trade_exchange }
      else
        format.html { render :new }
        format.json { render json: @pe_trade_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pe_trade_exchanges/1
  # PATCH/PUT /pe_trade_exchanges/1.json
  def update
    respond_to do |format|
      if @pe_trade_exchange.update(pe_trade_exchange_params)
        format.html { redirect_to @pe_trade_exchange, notice: 'Pe trade exchange was successfully updated.' }
        format.json { render :show, status: :ok, location: @pe_trade_exchange }
      else
        format.html { render :edit }
        format.json { render json: @pe_trade_exchange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pe_trade_exchanges/1
  # DELETE /pe_trade_exchanges/1.json
  def destroy
    @pe_trade_exchange.destroy
    respond_to do |format|
      format.html { redirect_to pe_trade_exchanges_url, notice: 'Pe trade exchange was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pe_trade_exchange
      @pe_trade_exchange = PeTradeExchange.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pe_trade_exchange_params
      params.require(:pe_trade_exchange).permit(:order, :target_type, :target_value, :need_type, :need_value)
    end
end
