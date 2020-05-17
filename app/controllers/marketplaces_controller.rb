class MarketplacesController < ApplicationController
  before_action :set_marketplace, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_patron!, except: [:show, :index]
  

  # GET /marketplaces
  # GET /marketplaces.json
  def index
    @marketplaces = Marketplace.all
  end

  # GET /marketplaces/1
  # GET /marketplaces/1.json
  def show
    @marketplace = Marketplace.find(params[:id])
  end

  # GET /marketplaces/new
  def new
    @marketplace = Marketplace.new
  end

  # GET /marketplaces/1/edit
  def edit
  end

  # POST /marketplaces
  # POST /marketplaces.json
  def create
    @marketplace = Marketplace.new()
    @marketplace.patron = current_patron
    @marketplace.image.attach(params[:marketplace][:image])
    respond_to do |format|
      if @marketplace.save
          
        format.html { redirect_to @marketplace, notice: 'Marketplace was successfully created.' }
        format.json { render :show, status: :created, location: @marketplace }
      else
        format.html { render :new }
        format.json { render json: @marketplace.errors, status: :unprocessable_entity }
      
    end
  end

  # PATCH/PUT /marketplaces/1
  # PATCH/PUT /marketplaces/1.json
  def update
    respond_to do |format|
      if @marketplace.update(marketplace_params)
        format.html { redirect_to @marketplace, notice: 'Marketplace was successfully updated.' }
        format.json { render :show, status: :ok, location: @marketplace }
      else
        format.html { render :edit }
        format.json { render json: @marketplace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marketplaces/1
  # DELETE /marketplaces/1.json
  def destroy
    @marketplace.destroy
    respond_to do |format|
      format.html { redirect_to marketplaces_url, notice: 'Marketplace was successfully destroyed.' }
      format.json { head :no_content }
      @post = current_patron.posts.find(params[:id])
      @post.destroy
      redirect_to user_path(current_patron)
    end
  end

  private

  def authorize
      #if patron not a business role cant post edit or delete anything, ideally wouldnt even be able to see the options
      #also only want business roles to be able to post once on marketplace with an image/bio/link back to thier profile which has the wares to purchase
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_marketplace
      @marketplace = Marketplace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marketplace_params
      params.require(:marketplace).permit()
    end
  end
end

