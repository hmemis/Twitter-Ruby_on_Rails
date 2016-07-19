class TakipcisController < ApplicationController
  before_action :set_takipci, only: [:show, :edit, :update, :destroy]

  # GET /takipcis
  # GET /takipcis.json
  def index
    @takipcis = Takipci.all
  end

  # GET /takipcis/1
  # GET /takipcis/1.json
  def show
  end

  # GET /takipcis/new
  def new
    @takipci = Takipci.new
  end

  # GET /takipcis/1/edit
  def edit
  end

  # POST /takipcis
  # POST /takipcis.json
  def create
    @takipci = Takipci.new(takipci_params)

    respond_to do |format|
      if @takipci.save
        format.html { redirect_to @takipci, notice: 'Takipci was successfully created.' }
        format.json { render :show, status: :created, location: @takipci }
      else
        format.html { render :new }
        format.json { render json: @takipci.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /takipcis/1
  # PATCH/PUT /takipcis/1.json
  def update
    respond_to do |format|
      if @takipci.update(takipci_params)
        format.html { redirect_to @takipci, notice: 'Takipci was successfully updated.' }
        format.json { render :show, status: :ok, location: @takipci }
      else
        format.html { render :edit }
        format.json { render json: @takipci.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /takipcis/1
  # DELETE /takipcis/1.json
  def destroy
    @takipci.destroy
    respond_to do |format|
      format.html { redirect_to takipcis_url, notice: 'Takipci was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_takipci
      @takipci = Takipci.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def takipci_params
      params.require(:takipci).permit(:ad, :soyad)
    end
end
