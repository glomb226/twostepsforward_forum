class SupplychainsController < ApplicationController
  before_action :set_supplychain, only: [:show, :edit, :update, :destroy]

  # GET /supplychains
  # GET /supplychains.json
  def index
    @supplychains = Supplychain.all
  end

  # GET /supplychains/1
  # GET /supplychains/1.json
  def show
  end

  # GET /supplychains/new
  def new
    @supplychain = Supplychain.new
  end

  # GET /supplychains/1/edit
  def edit
  end

  # POST /supplychains
  # POST /supplychains.json
  def create
    @supplychain = Supplychain.new(supplychain_params)

    respond_to do |format|
      if @supplychain.save
        format.html { redirect_to @supplychain, notice: 'Supplychain was successfully created.' }
        format.json { render :show, status: :created, location: @supplychain }
      else
        format.html { render :new }
        format.json { render json: @supplychain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplychains/1
  # PATCH/PUT /supplychains/1.json
  def update
    respond_to do |format|
      if @supplychain.update(supplychain_params)
        format.html { redirect_to @supplychain, notice: 'Supplychain was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplychain }
      else
        format.html { render :edit }
        format.json { render json: @supplychain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplychains/1
  # DELETE /supplychains/1.json
  def destroy
    @supplychain.destroy
    respond_to do |format|
      format.html { redirect_to supplychains_url, notice: 'Supplychain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplychain
      @supplychain = Supplychain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplychain_params
      params.require(:supplychain).permit(:user_id, :title, :complete)
    end
end
