class PeExchangeCommonsController < ApplicationController
  before_action :set_pe_exchange_common, only: [:show, :edit, :update, :destroy]
  # before_action :set_host_for_local_storage
  # #
  # private
  # def set_host_for_local_storage
  #   ActiveStorage::Current.host = request.base_url if Rails.application.config.active_storage.service == :local
  # end

  # GET /pe_exchange_commons
  # GET /pe_exchange_commons.json
  def index
    @pe_exchange_commons = PeExchangeCommon.all

    # render :json => {
    #     exchangeCommon:
    #         @pe_exchange_commons.map { |ex_change_common| {
    #             banner: url_for(ex_change_common.banner),
    #             interval: ex_change_common.interval,
    #             maintenance: ex_change_common.maintenance
    #         }}
    # }
    #
    respond_to do |format|
      format.html
      format.json { render json: list_json(@pe_exchange_commons) }
    end
  end


  # GET /pe_exchange_commons/1
  # GET /pe_exchange_commons/1.json
  def show
  end

  # GET /pe_exchange_commons/new
  def new
    @pe_exchange_common = PeExchangeCommon.new
  end

  # GET /pe_exchange_commons/1/edit
  def edit
  end

  # POST /pe_exchange_commons
  # POST /pe_exchange_commons.json
  def create
    @pe_exchange_common = PeExchangeCommon.new(pe_exchange_common_params)

    respond_to do |format|
      if @pe_exchange_common.save
        format.html { redirect_to @pe_exchange_common, notice: 'Pe exchange common was successfully created.' }
        format.json { render :show, status: :created, location: @pe_exchange_common }
      else
        format.html { render :new }
        format.json { render json: @pe_exchange_common.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pe_exchange_commons/1
  # PATCH/PUT /pe_exchange_commons/1.json
  def update
    respond_to do |format|
      if @pe_exchange_common.update(pe_exchange_common_params)
        format.html { redirect_to @pe_exchange_common, notice: 'Pe exchange common was successfully updated.' }
        format.json { render :show, status: :ok, location: @pe_exchange_common }
      else
        format.html { render :edit }
        format.json { render json: @pe_exchange_common.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pe_exchange_commons/1
  # DELETE /pe_exchange_commons/1.json
  def destroy
    @pe_exchange_common.destroy
    respond_to do |format|
      format.html { redirect_to pe_exchange_commons_url, notice: 'Pe exchange common was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pe_exchange_common
    @pe_exchange_common = PeExchangeCommon.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pe_exchange_common_params
    params.require(:pe_exchange_common).permit(:banner, :interval, :maintenance)
  end
end
