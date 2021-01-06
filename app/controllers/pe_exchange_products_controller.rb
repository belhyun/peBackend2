class PeExchangeProductsController < ApplicationController
  before_action :set_pe_exchange_product, only: [:show, :edit, :update, :destroy]

  # GET /pe_exchange_products
  # GET /pe_exchange_products.json
  def index
    @pe_exchange_products = PeExchangeProduct.all
  end

  # GET /pe_exchange_products/1
  # GET /pe_exchange_products/1.json
  def show
  end

  # GET /pe_exchange_products/new
  def new
    @pe_exchange_product = PeExchangeProduct.new
  end

  # GET /pe_exchange_products/1/edit
  def edit
  end

  # POST /pe_exchange_products
  # POST /pe_exchange_products.json
  def create
    @pe_exchange_product = PeExchangeProduct.new(pe_exchange_product_params)

    respond_to do |format|
      if @pe_exchange_product.save
        format.html { redirect_to @pe_exchange_product, notice: 'Pe exchange product was successfully created.' }
        format.json { render :show, status: :created, location: @pe_exchange_product }
      else
        format.html { render :new }
        format.json { render json: @pe_exchange_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pe_exchange_products/1
  # PATCH/PUT /pe_exchange_products/1.json
  def update
    respond_to do |format|
      if @pe_exchange_product.update(pe_exchange_product_params)
        format.html { redirect_to @pe_exchange_product, notice: 'Pe exchange product was successfully updated.' }
        format.json { render :show, status: :ok, location: @pe_exchange_product }
      else
        format.html { render :edit }
        format.json { render json: @pe_exchange_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pe_exchange_products/1
  # DELETE /pe_exchange_products/1.json
  def destroy
    @pe_exchange_product.destroy
    respond_to do |format|
      format.html { redirect_to pe_exchange_products_url, notice: 'Pe exchange product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pe_exchange_product
      @pe_exchange_product = PeExchangeProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pe_exchange_product_params
      params.require(:pe_exchange_product).permit(:group_id, :order, :product_id, :price_type, :price, :limit, :status)
    end
end
