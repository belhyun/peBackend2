class PeProductsController < ApplicationController
  before_action :set_pe_product, only: [:show, :edit, :update, :destroy]

  # GET /pe_products
  # GET /pe_products.json
  def index
    @pe_products = PeProduct.all
  end

  # GET /pe_products/1
  # GET /pe_products/1.json
  def show
  end

  # GET /pe_products/new
  def new
    @pe_product = PeProduct.new
  end

  # GET /pe_products/1/edit
  def edit
  end

  # POST /pe_products
  # POST /pe_products.json
  def create
    @pe_product = PeProduct.new(pe_product_params)

    respond_to do |format|
      if @pe_product.save
        format.html { redirect_to @pe_product, notice: 'Pe product was successfully created.' }
        format.json { render :show, status: :created, location: @pe_product }
      else
        format.html { render :new }
        format.json { render json: @pe_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pe_products/1
  # PATCH/PUT /pe_products/1.json
  def update
    respond_to do |format|
      if @pe_product.update(pe_product_params)
        format.html { redirect_to @pe_product, notice: 'Pe product was successfully updated.' }
        format.json { render :show, status: :ok, location: @pe_product }
      else
        format.html { render :edit }
        format.json { render json: @pe_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pe_products/1
  # DELETE /pe_products/1.json
  def destroy
    @pe_product.destroy
    respond_to do |format|
      format.html { redirect_to pe_products_url, notice: 'Pe product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pe_product
      @pe_product = PeProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pe_product_params
      params.require(:pe_product).permit(:name, :product_type, :cash_price, :coin_price, :image, :description, :reward_type, :reward_value, :alarm)
    end
end
