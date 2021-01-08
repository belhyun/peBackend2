class PeRecommendsController < ApplicationController
  before_action :set_pe_recommend, only: [:show, :edit, :update, :destroy]

  # GET /pe_recommends
  # GET /pe_recommends.json
  def index
    @pe_recommends = PeRecommend.all.page(params[:page]).per(params[:per_page]).order("'order' asc")
    respond_to do |format|
      format.html
      format.json { render json:
                               list_json(@pe_recommends, :include => [:pe_product])
      }
    end
  end

  # GET /pe_recommends/1
  # GET /pe_recommends/1.json
  def show
  end

  # GET /pe_recommends/new
  def new
    @pe_recommend = PeRecommend.new
  end

  # GET /pe_recommends/1/edit
  def edit
  end

  # POST /pe_recommends
  # POST /pe_recommends.json
  def create
    @pe_recommend = PeRecommend.new(pe_recommend_params)

    respond_to do |format|
      if @pe_recommend.save
        format.html { redirect_to @pe_recommend, notice: 'Pe recommend was successfully created.' }
        format.json { render :show, status: :created, location: @pe_recommend }
      else
        format.html { render :new }
        format.json { render json: @pe_recommend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pe_recommends/1
  # PATCH/PUT /pe_recommends/1.json
  def update
    respond_to do |format|
      if @pe_recommend.update(pe_recommend_params)
        format.html { redirect_to @pe_recommend, notice: 'Pe recommend was successfully updated.' }
        format.json { render :show, status: :ok, location: @pe_recommend }
      else
        format.html { render :edit }
        format.json { render json: @pe_recommend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pe_recommends/1
  # DELETE /pe_recommends/1.json
  def destroy
    @pe_recommend.destroy
    respond_to do |format|
      format.html { redirect_to pe_recommends_url, notice: 'Pe recommend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pe_recommend
    @pe_recommend = PeRecommend.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pe_recommend_params
    params.require(:pe_recommend).permit(:order, :pe_product_id)
  end
end
