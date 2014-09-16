class SmallAdsController < ApplicationController
  before_action :set_small_ad, only: [:show, :edit, :update, :destroy]

  # GET /small_ads
  # GET /small_ads.json
  def index
    @small_ads = SmallAd.all
  end

  # GET /small_ads/1
  # GET /small_ads/1.json
  def show
  end

  # GET /small_ads/new
  def new
    @small_ad = SmallAd.new
  end

  # GET /small_ads/1/edit
  def edit
  end

  # POST /small_ads
  # POST /small_ads.json
  def create
    @small_ad = SmallAd.new(small_ad_params)

    respond_to do |format|
      if @small_ad.save
        format.html { redirect_to @small_ad, notice: 'Small ad was successfully created.' }
        format.json { render :show, status: :created, location: @small_ad }
      else
        format.html { render :new }
        format.json { render json: @small_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /small_ads/1
  # PATCH/PUT /small_ads/1.json
  def update
    respond_to do |format|
      if @small_ad.update(small_ad_params)
        format.html { redirect_to @small_ad, notice: 'Small ad was successfully updated.' }
        format.json { render :show, status: :ok, location: @small_ad }
      else
        format.html { render :edit }
        format.json { render json: @small_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /small_ads/1
  # DELETE /small_ads/1.json
  def destroy
    @small_ad.destroy
    respond_to do |format|
      format.html { redirect_to small_ads_url, notice: 'Small ad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_small_ad
      @small_ad = SmallAd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def small_ad_params
      params.require(:small_ad).permit(:name, :category_id, :price)
    end
end
